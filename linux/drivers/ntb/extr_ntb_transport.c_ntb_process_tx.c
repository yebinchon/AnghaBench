
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ntb_transport_qp {int tx_max_frame; int tx_pkts; int tx_max_entry; int tx_index; int tx_free_q; int ntb_tx_free_q_lock; int cb_data; int (* tx_handler ) (struct ntb_transport_qp*,int ,int *,int ) ;int tx_ring_full; TYPE_1__* remote_rx_info; } ;
struct ntb_queue_entry {int len; int entry; } ;
struct ntb_payload_header {int dummy; } ;
struct TYPE_2__ {int entry; } ;


 int EAGAIN ;
 int EIO ;
 int ntb_async_tx (struct ntb_transport_qp*,struct ntb_queue_entry*) ;
 int ntb_list_add (int *,int *,int *) ;
 int stub1 (struct ntb_transport_qp*,int ,int *,int ) ;

__attribute__((used)) static int ntb_process_tx(struct ntb_transport_qp *qp,
     struct ntb_queue_entry *entry)
{
 if (qp->tx_index == qp->remote_rx_info->entry) {
  qp->tx_ring_full++;
  return -EAGAIN;
 }

 if (entry->len > qp->tx_max_frame - sizeof(struct ntb_payload_header)) {
  if (qp->tx_handler)
   qp->tx_handler(qp, qp->cb_data, ((void*)0), -EIO);

  ntb_list_add(&qp->ntb_tx_free_q_lock, &entry->entry,
        &qp->tx_free_q);
  return 0;
 }

 ntb_async_tx(qp, entry);

 qp->tx_index++;
 qp->tx_index %= qp->tx_max_entry;

 qp->tx_pkts++;

 return 0;
}
