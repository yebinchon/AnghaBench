
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb_node {int entry; struct urb* urb; struct dlfb_data* dlfb; } ;
struct urb {int transfer_flags; int transfer_dma; } ;
struct TYPE_2__ {size_t size; size_t count; scalar_t__ available; int limit_sem; int list; int lock; } ;
struct dlfb_data {TYPE_1__ urbs; int udev; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 size_t PAGE_SIZE ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int dlfb_free_urb_list (struct dlfb_data*) ;
 int dlfb_urb_completion ;
 int kfree (struct urb_node*) ;
 struct urb_node* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int sema_init (int *,int ) ;
 int spin_lock_init (int *) ;
 int up (int *) ;
 char* usb_alloc_coherent (int ,size_t,int ,int *) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_fill_bulk_urb (struct urb*,int ,int ,char*,size_t,int ,struct urb_node*) ;
 int usb_free_urb (struct urb*) ;
 int usb_sndbulkpipe (int ,int) ;

__attribute__((used)) static int dlfb_alloc_urb_list(struct dlfb_data *dlfb, int count, size_t size)
{
 struct urb *urb;
 struct urb_node *unode;
 char *buf;
 size_t wanted_size = count * size;

 spin_lock_init(&dlfb->urbs.lock);

retry:
 dlfb->urbs.size = size;
 INIT_LIST_HEAD(&dlfb->urbs.list);

 sema_init(&dlfb->urbs.limit_sem, 0);
 dlfb->urbs.count = 0;
 dlfb->urbs.available = 0;

 while (dlfb->urbs.count * size < wanted_size) {
  unode = kzalloc(sizeof(*unode), GFP_KERNEL);
  if (!unode)
   break;
  unode->dlfb = dlfb;

  urb = usb_alloc_urb(0, GFP_KERNEL);
  if (!urb) {
   kfree(unode);
   break;
  }
  unode->urb = urb;

  buf = usb_alloc_coherent(dlfb->udev, size, GFP_KERNEL,
      &urb->transfer_dma);
  if (!buf) {
   kfree(unode);
   usb_free_urb(urb);
   if (size > PAGE_SIZE) {
    size /= 2;
    dlfb_free_urb_list(dlfb);
    goto retry;
   }
   break;
  }


  usb_fill_bulk_urb(urb, dlfb->udev, usb_sndbulkpipe(dlfb->udev, 1),
   buf, size, dlfb_urb_completion, unode);
  urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

  list_add_tail(&unode->entry, &dlfb->urbs.list);

  up(&dlfb->urbs.limit_sem);
  dlfb->urbs.count++;
  dlfb->urbs.available++;
 }

 return dlfb->urbs.count;
}
