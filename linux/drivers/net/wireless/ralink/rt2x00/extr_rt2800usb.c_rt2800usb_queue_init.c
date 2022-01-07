
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int dummy; } ;
struct queue_entry_priv_usb {int dummy; } ;
struct data_queue {int qid; int limit; unsigned short winfo_size; int priv_size; void* desc_size; void* data_size; struct rt2x00_dev* rt2x00dev; } ;


 void* AGGREGATION_SIZE ;
 int BUG () ;
 void* MGMT_FRAME_SIZE ;







 void* RXINFO_DESC_SIZE ;
 void* TXINFO_DESC_SIZE ;
 int rt2800_get_txwi_rxwi_size (struct rt2x00_dev*,unsigned short*,unsigned short*) ;

__attribute__((used)) static void rt2800usb_queue_init(struct data_queue *queue)
{
 struct rt2x00_dev *rt2x00dev = queue->rt2x00dev;
 unsigned short txwi_size, rxwi_size;

 rt2800_get_txwi_rxwi_size(rt2x00dev, &txwi_size, &rxwi_size);

 switch (queue->qid) {
 case 128:
  queue->limit = 128;
  queue->data_size = AGGREGATION_SIZE;
  queue->desc_size = RXINFO_DESC_SIZE;
  queue->winfo_size = rxwi_size;
  queue->priv_size = sizeof(struct queue_entry_priv_usb);
  break;

 case 131:
 case 132:
 case 134:
 case 133:
  queue->limit = 16;
  queue->data_size = AGGREGATION_SIZE;
  queue->desc_size = TXINFO_DESC_SIZE;
  queue->winfo_size = txwi_size;
  queue->priv_size = sizeof(struct queue_entry_priv_usb);
  break;

 case 129:
  queue->limit = 8;
  queue->data_size = MGMT_FRAME_SIZE;
  queue->desc_size = TXINFO_DESC_SIZE;
  queue->winfo_size = txwi_size;
  queue->priv_size = sizeof(struct queue_entry_priv_usb);
  break;

 case 130:

 default:
  BUG();
  break;
 }
}
