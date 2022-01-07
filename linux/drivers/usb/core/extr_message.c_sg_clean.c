
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_sg_request {size_t entries; int * dev; int * urbs; } ;


 int kfree (int *) ;
 int usb_free_urb (int ) ;

__attribute__((used)) static void sg_clean(struct usb_sg_request *io)
{
 if (io->urbs) {
  while (io->entries--)
   usb_free_urb(io->urbs[io->entries]);
  kfree(io->urbs);
  io->urbs = ((void*)0);
 }
 io->dev = ((void*)0);
}
