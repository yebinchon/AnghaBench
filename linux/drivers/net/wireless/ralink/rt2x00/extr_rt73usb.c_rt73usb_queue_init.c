
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_entry_priv_usb {int dummy; } ;
struct data_queue {int qid; int limit; int priv_size; int desc_size; void* data_size; } ;


 int BUG () ;
 void* DATA_FRAME_SIZE ;
 void* MGMT_FRAME_SIZE ;







 int RXD_DESC_SIZE ;
 int TXD_DESC_SIZE ;
 int TXINFO_SIZE ;

__attribute__((used)) static void rt73usb_queue_init(struct data_queue *queue)
{
 switch (queue->qid) {
 case 128:
  queue->limit = 32;
  queue->data_size = DATA_FRAME_SIZE;
  queue->desc_size = RXD_DESC_SIZE;
  queue->priv_size = sizeof(struct queue_entry_priv_usb);
  break;

 case 131:
 case 132:
 case 134:
 case 133:
  queue->limit = 32;
  queue->data_size = DATA_FRAME_SIZE;
  queue->desc_size = TXD_DESC_SIZE;
  queue->priv_size = sizeof(struct queue_entry_priv_usb);
  break;

 case 129:
  queue->limit = 4;
  queue->data_size = MGMT_FRAME_SIZE;
  queue->desc_size = TXINFO_SIZE;
  queue->priv_size = sizeof(struct queue_entry_priv_usb);
  break;

 case 130:

 default:
  BUG();
  break;
 }
}
