
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_conn {int response_queue_lock; int response_queue_list; int immed_queue_lock; int immed_queue_list; } ;


 int list_empty (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

bool iscsit_conn_all_queues_empty(struct iscsi_conn *conn)
{
 bool empty;

 spin_lock_bh(&conn->immed_queue_lock);
 empty = list_empty(&conn->immed_queue_list);
 spin_unlock_bh(&conn->immed_queue_lock);

 if (!empty)
  return empty;

 spin_lock_bh(&conn->response_queue_lock);
 empty = list_empty(&conn->response_queue_list);
 spin_unlock_bh(&conn->response_queue_lock);

 return empty;
}
