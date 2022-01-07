
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_transport_qp {int rxc_db_work; scalar_t__ active; int rx_pend_q; int ntb_rx_q_lock; int rx_free_q; } ;
struct ntb_queue_entry {unsigned int len; int entry; scalar_t__ rx_index; scalar_t__ errors; scalar_t__ retries; scalar_t__ flags; void* buf; void* cb_data; } ;


 int EINVAL ;
 int ENOMEM ;
 int ntb_list_add (int *,int *,int *) ;
 struct ntb_queue_entry* ntb_list_rm (int *,int *) ;
 int tasklet_schedule (int *) ;

int ntb_transport_rx_enqueue(struct ntb_transport_qp *qp, void *cb, void *data,
        unsigned int len)
{
 struct ntb_queue_entry *entry;

 if (!qp)
  return -EINVAL;

 entry = ntb_list_rm(&qp->ntb_rx_q_lock, &qp->rx_free_q);
 if (!entry)
  return -ENOMEM;

 entry->cb_data = cb;
 entry->buf = data;
 entry->len = len;
 entry->flags = 0;
 entry->retries = 0;
 entry->errors = 0;
 entry->rx_index = 0;

 ntb_list_add(&qp->ntb_rx_q_lock, &entry->entry, &qp->rx_pend_q);

 if (qp->active)
  tasklet_schedule(&qp->rxc_db_work);

 return 0;
}
