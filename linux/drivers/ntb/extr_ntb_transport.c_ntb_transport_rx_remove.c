
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_transport_qp {int rx_free_q; int ntb_rx_q_lock; int rx_pend_q; scalar_t__ client_ready; } ;
struct ntb_queue_entry {unsigned int len; int entry; void* cb_data; } ;


 int ntb_list_add (int *,int *,int *) ;
 struct ntb_queue_entry* ntb_list_rm (int *,int *) ;

void *ntb_transport_rx_remove(struct ntb_transport_qp *qp, unsigned int *len)
{
 struct ntb_queue_entry *entry;
 void *buf;

 if (!qp || qp->client_ready)
  return ((void*)0);

 entry = ntb_list_rm(&qp->ntb_rx_q_lock, &qp->rx_pend_q);
 if (!entry)
  return ((void*)0);

 buf = entry->cb_data;
 *len = entry->len;

 ntb_list_add(&qp->ntb_rx_q_lock, &entry->entry, &qp->rx_free_q);

 return buf;
}
