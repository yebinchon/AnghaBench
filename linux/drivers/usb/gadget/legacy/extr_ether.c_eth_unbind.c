
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_composite_dev {int gadget; } ;


 scalar_t__ can_support_ecm (int ) ;
 int f_ecm ;
 int f_eem ;
 int f_geth ;
 int f_rndis ;
 int fi_ecm ;
 int fi_eem ;
 int fi_geth ;
 int fi_rndis ;
 scalar_t__ has_rndis () ;
 int kfree (int *) ;
 int ** otg_desc ;
 int usb_put_function (int ) ;
 int usb_put_function_instance (int ) ;
 scalar_t__ use_eem ;

__attribute__((used)) static int eth_unbind(struct usb_composite_dev *cdev)
{
 if (has_rndis()) {
  usb_put_function(f_rndis);
  usb_put_function_instance(fi_rndis);
 }
 if (use_eem) {
  usb_put_function(f_eem);
  usb_put_function_instance(fi_eem);
 } else if (can_support_ecm(cdev->gadget)) {
  usb_put_function(f_ecm);
  usb_put_function_instance(fi_ecm);
 } else {
  usb_put_function(f_geth);
  usb_put_function_instance(fi_geth);
 }
 kfree(otg_desc[0]);
 otg_desc[0] = ((void*)0);

 return 0;
}
