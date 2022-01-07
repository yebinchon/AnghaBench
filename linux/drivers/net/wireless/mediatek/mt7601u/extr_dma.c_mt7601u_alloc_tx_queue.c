
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mt7601u_tx_queue {int entries; TYPE_1__* e; struct mt7601u_dev* dev; } ;
struct mt7601u_dev {int dummy; } ;
struct TYPE_2__ {int urb; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int N_TX_ENTRIES ;
 int usb_alloc_urb (int ,int ) ;

__attribute__((used)) static int mt7601u_alloc_tx_queue(struct mt7601u_dev *dev,
      struct mt7601u_tx_queue *q)
{
 int i;

 q->dev = dev;
 q->entries = N_TX_ENTRIES;

 for (i = 0; i < N_TX_ENTRIES; i++) {
  q->e[i].urb = usb_alloc_urb(0, GFP_KERNEL);
  if (!q->e[i].urb)
   return -ENOMEM;
 }

 return 0;
}
