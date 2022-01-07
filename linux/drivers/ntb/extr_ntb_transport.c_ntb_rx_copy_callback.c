
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_transport_qp {int rx_buff; int rx_max_frame; int rx_index; int rx_memcpy; } ;
struct ntb_queue_entry {struct ntb_transport_qp* qp; int flags; int errors; } ;
struct dmaengine_result {int result; } ;
typedef enum dmaengine_tx_result { ____Placeholder_dmaengine_tx_result } dmaengine_tx_result ;


 int DESC_DONE_FLAG ;




 int ntb_complete_rxc (struct ntb_transport_qp*) ;
 int ntb_memcpy_rx (struct ntb_queue_entry*,void*) ;

__attribute__((used)) static void ntb_rx_copy_callback(void *data,
     const struct dmaengine_result *res)
{
 struct ntb_queue_entry *entry = data;


 if (res) {
  enum dmaengine_tx_result dma_err = res->result;

  switch (dma_err) {
  case 129:
  case 128:
   entry->errors++;

  case 131:
  {
   struct ntb_transport_qp *qp = entry->qp;
   void *offset = qp->rx_buff + qp->rx_max_frame *
     qp->rx_index;

   ntb_memcpy_rx(entry, offset);
   qp->rx_memcpy++;
   return;
  }

  case 130:
  default:
   break;
  }
 }

 entry->flags |= DESC_DONE_FLAG;

 ntb_complete_rxc(entry->qp);
}
