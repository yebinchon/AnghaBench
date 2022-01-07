
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iscsit_transport {int (* iscsit_immediate_queue ) (struct iscsi_conn*,struct iscsi_cmd*,int ) ;} ;
struct iscsi_queue_req {int state; struct iscsi_cmd* cmd; } ;
struct iscsi_conn {int check_immediate_queue; struct iscsit_transport* conn_transport; } ;
struct iscsi_cmd {int dummy; } ;


 int atomic_set (int *,int ) ;
 struct iscsi_queue_req* iscsit_get_cmd_from_immediate_queue (struct iscsi_conn*) ;
 int kmem_cache_free (int ,struct iscsi_queue_req*) ;
 int lio_qr_cache ;
 int stub1 (struct iscsi_conn*,struct iscsi_cmd*,int ) ;

__attribute__((used)) static int
iscsit_handle_immediate_queue(struct iscsi_conn *conn)
{
 struct iscsit_transport *t = conn->conn_transport;
 struct iscsi_queue_req *qr;
 struct iscsi_cmd *cmd;
 u8 state;
 int ret;

 while ((qr = iscsit_get_cmd_from_immediate_queue(conn))) {
  atomic_set(&conn->check_immediate_queue, 0);
  cmd = qr->cmd;
  state = qr->state;
  kmem_cache_free(lio_qr_cache, qr);

  ret = t->iscsit_immediate_queue(conn, cmd, state);
  if (ret < 0)
   return ret;
 }

 return 0;
}
