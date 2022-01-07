
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iscsi_queue_req {int qr_list; int state; struct iscsi_cmd* cmd; } ;
struct iscsi_conn {int queues_wq; int immed_queue_lock; int check_immediate_queue; int immed_queue_list; } ;
struct iscsi_cmd {int immed_queue_count; } ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int) ;
 struct iscsi_queue_req* kmem_cache_zalloc (int ,int ) ;
 int lio_qr_cache ;
 int list_add_tail (int *,int *) ;
 int pr_err (char*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wake_up (int *) ;

void iscsit_add_cmd_to_immediate_queue(
 struct iscsi_cmd *cmd,
 struct iscsi_conn *conn,
 u8 state)
{
 struct iscsi_queue_req *qr;

 qr = kmem_cache_zalloc(lio_qr_cache, GFP_ATOMIC);
 if (!qr) {
  pr_err("Unable to allocate memory for"
    " struct iscsi_queue_req\n");
  return;
 }
 INIT_LIST_HEAD(&qr->qr_list);
 qr->cmd = cmd;
 qr->state = state;

 spin_lock_bh(&conn->immed_queue_lock);
 list_add_tail(&qr->qr_list, &conn->immed_queue_list);
 atomic_inc(&cmd->immed_queue_count);
 atomic_set(&conn->check_immediate_queue, 1);
 spin_unlock_bh(&conn->immed_queue_lock);

 wake_up(&conn->queues_wq);
}
