
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int dummy; } ;
typedef int gfp_t ;


 int iso_frame_desc ;
 struct urb* kmalloc (int ,int ) ;
 int struct_size (struct urb*,int ,int) ;
 int usb_init_urb (struct urb*) ;

struct urb *usb_alloc_urb(int iso_packets, gfp_t mem_flags)
{
 struct urb *urb;

 urb = kmalloc(struct_size(urb, iso_frame_desc, iso_packets),
        mem_flags);
 if (!urb)
  return ((void*)0);
 usb_init_urb(urb);
 return urb;
}
