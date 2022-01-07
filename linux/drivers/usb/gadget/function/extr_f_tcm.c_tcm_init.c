
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int target_register_template (int *) ;
 int tcmusb_func ;
 int usb_function_register (int *) ;
 int usb_function_unregister (int *) ;
 int usbg_ops ;

__attribute__((used)) static int tcm_init(void)
{
 int ret;

 ret = usb_function_register(&tcmusb_func);
 if (ret)
  return ret;

 ret = target_register_template(&usbg_ops);
 if (ret)
  usb_function_unregister(&tcmusb_func);

 return ret;
}
