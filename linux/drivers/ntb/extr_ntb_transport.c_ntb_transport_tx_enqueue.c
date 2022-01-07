
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_transport_qp {int tx_free_q; int ntb_tx_free_q_lock; int tx_err_no_buf; int link_is_up; } ;
struct ntb_queue_entry {unsigned int len; int entry; scalar_t__ tx_index; scalar_t__ retries; scalar_t__ errors; scalar_t__ flags; void* buf; void* cb_data; } ;


 int EBUSY ;
 int EINVAL ;
 int ntb_list_add (int *,int *,int *) ;
 struct ntb_queue_entry* ntb_list_rm (int *,int *) ;
 int ntb_process_tx (struct ntb_transport_qp*,struct ntb_queue_entry*) ;

int ntb_transport_tx_enqueue(struct ntb_transport_qp *qp, void *cb, void *data,
        unsigned int len)
{
 struct ntb_queue_entry *entry;
 int rc;

 if (!qp || !qp->link_is_up || !len)
  return -EINVAL;

 entry = ntb_list_rm(&qp->ntb_tx_free_q_lock, &qp->tx_free_q);
 if (!entry) {
  qp->tx_err_no_buf++;
  return -EBUSY;
 }

 entry->cb_data = cb;
 entry->buf = data;
 entry->len = len;
 entry->flags = 0;
 entry->errors = 0;
 entry->retries = 0;
 entry->tx_index = 0;

 rc = ntb_process_tx(qp, entry);
 if (rc)
  ntb_list_add(&qp->ntb_tx_free_q_lock, &entry->entry,
        &qp->tx_free_q);

 return rc;
}
