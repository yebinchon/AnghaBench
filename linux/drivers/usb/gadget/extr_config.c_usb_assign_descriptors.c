
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_gadget {int dummy; } ;
struct usb_function {void* ssp_descriptors; void* ss_descriptors; void* hs_descriptors; void* fs_descriptors; TYPE_1__* config; } ;
struct usb_descriptor_header {int dummy; } ;
struct TYPE_4__ {struct usb_gadget* gadget; } ;
struct TYPE_3__ {TYPE_2__* cdev; } ;


 int ENOMEM ;
 scalar_t__ gadget_is_dualspeed (struct usb_gadget*) ;
 scalar_t__ gadget_is_superspeed (struct usb_gadget*) ;
 scalar_t__ gadget_is_superspeed_plus (struct usb_gadget*) ;
 void* usb_copy_descriptors (struct usb_descriptor_header**) ;
 int usb_free_all_descriptors (struct usb_function*) ;

int usb_assign_descriptors(struct usb_function *f,
  struct usb_descriptor_header **fs,
  struct usb_descriptor_header **hs,
  struct usb_descriptor_header **ss,
  struct usb_descriptor_header **ssp)
{
 struct usb_gadget *g = f->config->cdev->gadget;

 if (fs) {
  f->fs_descriptors = usb_copy_descriptors(fs);
  if (!f->fs_descriptors)
   goto err;
 }
 if (hs && gadget_is_dualspeed(g)) {
  f->hs_descriptors = usb_copy_descriptors(hs);
  if (!f->hs_descriptors)
   goto err;
 }
 if (ss && gadget_is_superspeed(g)) {
  f->ss_descriptors = usb_copy_descriptors(ss);
  if (!f->ss_descriptors)
   goto err;
 }
 if (ssp && gadget_is_superspeed_plus(g)) {
  f->ssp_descriptors = usb_copy_descriptors(ssp);
  if (!f->ssp_descriptors)
   goto err;
 }
 return 0;
err:
 usb_free_all_descriptors(f);
 return -ENOMEM;
}
