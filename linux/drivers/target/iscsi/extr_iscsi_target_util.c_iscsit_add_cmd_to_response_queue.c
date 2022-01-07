
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iscsi_queue_req {int qr_list; int state; struct iscsi_cmd* cmd; } ;
struct iscsi_conn {int queues_wq; int response_queue_lock; int response_queue_list; } ;
struct iscsi_cmd {int response_queue_count; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_inc (int *) ;
 struct iscsi_queue_req* kmem_cache_zalloc (int ,int ) ;
 int lio_qr_cache ;
 int list_add_tail (int *,int *) ;
 int pr_err (char*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wake_up (int *) ;

int iscsit_add_cmd_to_response_queue(
 struct iscsi_cmd *cmd,
 struct iscsi_conn *conn,
 u8 state)
{
 struct iscsi_queue_req *qr;

 qr = kmem_cache_zalloc(lio_qr_cache, GFP_ATOMIC);
 if (!qr) {
  pr_err("Unable to allocate memory for"
   " struct iscsi_queue_req\n");
  return -ENOMEM;
 }
 INIT_LIST_HEAD(&qr->qr_list);
 qr->cmd = cmd;
 qr->state = state;

 spin_lock_bh(&conn->response_queue_lock);
 list_add_tail(&qr->qr_list, &conn->response_queue_list);
 atomic_inc(&cmd->response_queue_count);
 spin_unlock_bh(&conn->response_queue_lock);

 wake_up(&conn->queues_wq);
 return 0;
}
