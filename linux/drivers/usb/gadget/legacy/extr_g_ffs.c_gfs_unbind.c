
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_composite_dev {int gadget; } ;


 int ENTER () ;
 int N_CONF ;
 scalar_t__ can_support_ecm (int ) ;
 int f_ecm ;
 int ** f_ffs ;
 int f_geth ;
 int f_rndis ;
 int fi_ecm ;
 int fi_geth ;
 int fi_rndis ;
 int func_num ;
 int ** gfs_otg_desc ;
 int kfree (int *) ;
 int usb_put_function (int ) ;
 int usb_put_function_instance (int ) ;

__attribute__((used)) static int gfs_unbind(struct usb_composite_dev *cdev)
{
 int i;

 ENTER();
 for (i = 0; i < N_CONF * func_num; ++i)
  usb_put_function(*(f_ffs[0] + i));

 kfree(gfs_otg_desc[0]);
 gfs_otg_desc[0] = ((void*)0);

 return 0;
}
