
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct se_session {scalar_t__ sess_cmd_map; int sess_tag_pool; } ;
struct iscsi_conn {TYPE_2__* conn_transport; TYPE_1__* sess; } ;
struct TYPE_6__ {int map_tag; int map_cpu; } ;
struct iscsi_cmd {int dataout_timer; int r2t_lock; int error_lock; int istate_lock; int dataout_timeout_lock; int datain_lock; int cmd_r2t_list; int datain_list; int i_conn_node; int data_direction; struct iscsi_conn* conn; TYPE_3__ se_cmd; } ;
struct TYPE_5__ {int priv_size; } ;
struct TYPE_4__ {struct se_session* se_sess; } ;


 int DMA_NONE ;
 int INIT_LIST_HEAD (int *) ;
 int iscsit_handle_dataout_timeout ;
 int iscsit_wait_for_tag (struct se_session*,int,int*) ;
 int memset (struct iscsi_cmd*,int ,int) ;
 int sbitmap_queue_get (int *,int*) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

struct iscsi_cmd *iscsit_allocate_cmd(struct iscsi_conn *conn, int state)
{
 struct iscsi_cmd *cmd;
 struct se_session *se_sess = conn->sess->se_sess;
 int size, tag, cpu;

 tag = sbitmap_queue_get(&se_sess->sess_tag_pool, &cpu);
 if (tag < 0)
  tag = iscsit_wait_for_tag(se_sess, state, &cpu);
 if (tag < 0)
  return ((void*)0);

 size = sizeof(struct iscsi_cmd) + conn->conn_transport->priv_size;
 cmd = (struct iscsi_cmd *)(se_sess->sess_cmd_map + (tag * size));
 memset(cmd, 0, size);

 cmd->se_cmd.map_tag = tag;
 cmd->se_cmd.map_cpu = cpu;
 cmd->conn = conn;
 cmd->data_direction = DMA_NONE;
 INIT_LIST_HEAD(&cmd->i_conn_node);
 INIT_LIST_HEAD(&cmd->datain_list);
 INIT_LIST_HEAD(&cmd->cmd_r2t_list);
 spin_lock_init(&cmd->datain_lock);
 spin_lock_init(&cmd->dataout_timeout_lock);
 spin_lock_init(&cmd->istate_lock);
 spin_lock_init(&cmd->error_lock);
 spin_lock_init(&cmd->r2t_lock);
 timer_setup(&cmd->dataout_timer, iscsit_handle_dataout_timeout, 0);

 return cmd;
}
