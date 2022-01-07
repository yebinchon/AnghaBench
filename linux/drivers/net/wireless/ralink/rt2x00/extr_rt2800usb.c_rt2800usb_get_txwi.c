
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct queue_entry {TYPE_2__* skb; TYPE_1__* queue; } ;
typedef int __le32 ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_3__ {scalar_t__ qid; } ;


 scalar_t__ QID_BEACON ;
 scalar_t__ TXINFO_DESC_SIZE ;

__attribute__((used)) static __le32 *rt2800usb_get_txwi(struct queue_entry *entry)
{
 if (entry->queue->qid == QID_BEACON)
  return (__le32 *) (entry->skb->data);
 else
  return (__le32 *) (entry->skb->data + TXINFO_DESC_SIZE);
}
