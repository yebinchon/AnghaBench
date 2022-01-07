
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int target_unregister_template (int *) ;
 int tcmusb_func ;
 int usb_function_unregister (int *) ;
 int usbg_ops ;

__attribute__((used)) static void tcm_exit(void)
{
 target_unregister_template(&usbg_ops);
 usb_function_unregister(&tcmusb_func);
}
