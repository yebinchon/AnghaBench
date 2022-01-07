
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function {int ssp_descriptors; int ss_descriptors; int hs_descriptors; int fs_descriptors; } ;


 int usb_free_descriptors (int ) ;

void usb_free_all_descriptors(struct usb_function *f)
{
 usb_free_descriptors(f->fs_descriptors);
 usb_free_descriptors(f->hs_descriptors);
 usb_free_descriptors(f->ss_descriptors);
 usb_free_descriptors(f->ssp_descriptors);
}
