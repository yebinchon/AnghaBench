
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_composite_dev {int dummy; } ;


 int IS_ERR (int ) ;
 int IS_ERR_OR_NULL (int ) ;
 int f_acm_cfg1 ;
 int f_acm_cfg2 ;
 int f_ecm_cfg1 ;
 int f_ecm_cfg2 ;
 int f_msg_cfg1 ;
 int f_msg_cfg2 ;
 int f_obex1_cfg1 ;
 int f_obex1_cfg2 ;
 int f_obex2_cfg1 ;
 int f_obex2_cfg2 ;
 int f_phonet_cfg1 ;
 int f_phonet_cfg2 ;
 int fi_acm ;
 int fi_ecm ;
 int fi_msg ;
 int fi_obex1 ;
 int fi_obex2 ;
 int fi_phonet ;
 int usb_put_function (int ) ;
 int usb_put_function_instance (int ) ;

__attribute__((used)) static int nokia_unbind(struct usb_composite_dev *cdev)
{
 if (!IS_ERR_OR_NULL(f_obex1_cfg2))
  usb_put_function(f_obex1_cfg2);
 if (!IS_ERR_OR_NULL(f_obex2_cfg2))
  usb_put_function(f_obex2_cfg2);
 if (!IS_ERR_OR_NULL(f_obex1_cfg1))
  usb_put_function(f_obex1_cfg1);
 if (!IS_ERR_OR_NULL(f_obex2_cfg1))
  usb_put_function(f_obex2_cfg1);
 if (!IS_ERR_OR_NULL(f_phonet_cfg1))
  usb_put_function(f_phonet_cfg1);
 if (!IS_ERR_OR_NULL(f_phonet_cfg2))
  usb_put_function(f_phonet_cfg2);
 usb_put_function(f_acm_cfg1);
 usb_put_function(f_acm_cfg2);
 usb_put_function(f_ecm_cfg1);
 usb_put_function(f_ecm_cfg2);
 usb_put_function(f_msg_cfg1);
 usb_put_function(f_msg_cfg2);

 usb_put_function_instance(fi_msg);
 usb_put_function_instance(fi_ecm);
 if (!IS_ERR(fi_obex2))
  usb_put_function_instance(fi_obex2);
 if (!IS_ERR(fi_obex1))
  usb_put_function_instance(fi_obex1);
 if (!IS_ERR(fi_phonet))
  usb_put_function_instance(fi_phonet);
 usb_put_function_instance(fi_acm);

 return 0;
}
