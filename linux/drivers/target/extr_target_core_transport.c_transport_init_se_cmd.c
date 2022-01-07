
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct target_core_fabric_ops {int dummy; } ;
struct se_session {int dummy; } ;
struct se_cmd {int data_direction; int sam_task_attr; unsigned char* sense_buffer; int state_active; int data_length; struct se_session* se_sess; struct target_core_fabric_ops const* se_tfo; int cmd_kref; int work; int t_state_lock; int * abrt_compl; int * free_compl; int t_transport_stop_comp; int state_list; int se_cmd_list; int se_qf_node; int se_delayed_node; } ;


 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int *) ;
 int init_completion (int *) ;
 int kref_init (int *) ;
 int spin_lock_init (int *) ;

void transport_init_se_cmd(
 struct se_cmd *cmd,
 const struct target_core_fabric_ops *tfo,
 struct se_session *se_sess,
 u32 data_length,
 int data_direction,
 int task_attr,
 unsigned char *sense_buffer)
{
 INIT_LIST_HEAD(&cmd->se_delayed_node);
 INIT_LIST_HEAD(&cmd->se_qf_node);
 INIT_LIST_HEAD(&cmd->se_cmd_list);
 INIT_LIST_HEAD(&cmd->state_list);
 init_completion(&cmd->t_transport_stop_comp);
 cmd->free_compl = ((void*)0);
 cmd->abrt_compl = ((void*)0);
 spin_lock_init(&cmd->t_state_lock);
 INIT_WORK(&cmd->work, ((void*)0));
 kref_init(&cmd->cmd_kref);

 cmd->se_tfo = tfo;
 cmd->se_sess = se_sess;
 cmd->data_length = data_length;
 cmd->data_direction = data_direction;
 cmd->sam_task_attr = task_attr;
 cmd->sense_buffer = sense_buffer;

 cmd->state_active = 0;
}
