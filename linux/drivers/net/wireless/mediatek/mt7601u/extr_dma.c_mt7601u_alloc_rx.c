
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int entries; TYPE_1__* e; struct mt7601u_dev* dev; } ;
struct mt7601u_dev {TYPE_2__ rx_q; } ;
struct TYPE_3__ {int p; int urb; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MT_RX_ORDER ;
 int N_RX_ENTRIES ;
 int dev_alloc_pages (int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int usb_alloc_urb (int ,int ) ;

__attribute__((used)) static int mt7601u_alloc_rx(struct mt7601u_dev *dev)
{
 int i;

 memset(&dev->rx_q, 0, sizeof(dev->rx_q));
 dev->rx_q.dev = dev;
 dev->rx_q.entries = N_RX_ENTRIES;

 for (i = 0; i < N_RX_ENTRIES; i++) {
  dev->rx_q.e[i].urb = usb_alloc_urb(0, GFP_KERNEL);
  dev->rx_q.e[i].p = dev_alloc_pages(MT_RX_ORDER);

  if (!dev->rx_q.e[i].urb || !dev->rx_q.e[i].p)
   return -ENOMEM;
 }

 return 0;
}
