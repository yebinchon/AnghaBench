
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct urb {size_t transfer_buffer_length; int transfer_flags; int * transfer_buffer; } ;


 int GFP_KERNEL ;
 int URB_FREE_BUFFER ;
 size_t USBTMC_BUFSIZE ;
 int * kmalloc (size_t const,int ) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_free_urb (struct urb*) ;

__attribute__((used)) static struct urb *usbtmc_create_urb(void)
{
 const size_t bufsize = USBTMC_BUFSIZE;
 u8 *dmabuf = ((void*)0);
 struct urb *urb = usb_alloc_urb(0, GFP_KERNEL);

 if (!urb)
  return ((void*)0);

 dmabuf = kmalloc(bufsize, GFP_KERNEL);
 if (!dmabuf) {
  usb_free_urb(urb);
  return ((void*)0);
 }

 urb->transfer_buffer = dmabuf;
 urb->transfer_buffer_length = bufsize;
 urb->transfer_flags |= URB_FREE_BUFFER;
 return urb;
}
