
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb_node {int entry; struct urb* urb; int release_urb_work; struct ufx_data* dev; } ;
struct urb {int transfer_flags; int transfer_dma; } ;
struct TYPE_2__ {size_t size; int count; int available; int limit_sem; int list; int lock; } ;
struct ufx_data {TYPE_1__ urbs; int udev; } ;


 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int kfree (struct urb_node*) ;
 struct urb_node* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int pr_debug (char*,int,int) ;
 int sema_init (int *,int) ;
 int spin_lock_init (int *) ;
 int ufx_release_urb_work ;
 int ufx_urb_completion ;
 char* usb_alloc_coherent (int ,size_t,int ,int *) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_fill_bulk_urb (struct urb*,int ,int ,char*,size_t,int ,struct urb_node*) ;
 int usb_free_urb (struct urb*) ;
 int usb_sndbulkpipe (int ,int) ;

__attribute__((used)) static int ufx_alloc_urb_list(struct ufx_data *dev, int count, size_t size)
{
 int i = 0;
 struct urb *urb;
 struct urb_node *unode;
 char *buf;

 spin_lock_init(&dev->urbs.lock);

 dev->urbs.size = size;
 INIT_LIST_HEAD(&dev->urbs.list);

 while (i < count) {
  unode = kzalloc(sizeof(*unode), GFP_KERNEL);
  if (!unode)
   break;
  unode->dev = dev;

  INIT_DELAYED_WORK(&unode->release_urb_work,
     ufx_release_urb_work);

  urb = usb_alloc_urb(0, GFP_KERNEL);
  if (!urb) {
   kfree(unode);
   break;
  }
  unode->urb = urb;

  buf = usb_alloc_coherent(dev->udev, size, GFP_KERNEL,
      &urb->transfer_dma);
  if (!buf) {
   kfree(unode);
   usb_free_urb(urb);
   break;
  }


  usb_fill_bulk_urb(urb, dev->udev, usb_sndbulkpipe(dev->udev, 1),
   buf, size, ufx_urb_completion, unode);
  urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

  list_add_tail(&unode->entry, &dev->urbs.list);

  i++;
 }

 sema_init(&dev->urbs.limit_sem, i);
 dev->urbs.count = i;
 dev->urbs.available = i;

 pr_debug("allocated %d %d byte urbs\n", i, (int) size);

 return i;
}
