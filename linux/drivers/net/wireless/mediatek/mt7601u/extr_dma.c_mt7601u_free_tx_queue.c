
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mt7601u_tx_queue {int entries; TYPE_1__* e; int dev; } ;
struct TYPE_2__ {int urb; scalar_t__ skb; } ;


 int mt7601u_tx_status (int ,scalar_t__) ;
 int usb_free_urb (int ) ;
 int usb_poison_urb (int ) ;

__attribute__((used)) static void mt7601u_free_tx_queue(struct mt7601u_tx_queue *q)
{
 int i;

 for (i = 0; i < q->entries; i++) {
  usb_poison_urb(q->e[i].urb);
  if (q->e[i].skb)
   mt7601u_tx_status(q->dev, q->e[i].skb);
  usb_free_urb(q->e[i].urb);
 }
}
