
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function_instance {int dummy; } ;


 int ENOENT ;
 struct usb_function_instance* ERR_PTR (int) ;
 int IS_ERR (struct usb_function_instance*) ;
 int PTR_ERR (struct usb_function_instance*) ;
 int request_module (char*,char const*) ;
 struct usb_function_instance* try_get_usb_function_instance (char const*) ;

struct usb_function_instance *usb_get_function_instance(const char *name)
{
 struct usb_function_instance *fi;
 int ret;

 fi = try_get_usb_function_instance(name);
 if (!IS_ERR(fi))
  return fi;
 ret = PTR_ERR(fi);
 if (ret != -ENOENT)
  return fi;
 ret = request_module("usbfunc:%s", name);
 if (ret < 0)
  return ERR_PTR(ret);
 return try_get_usb_function_instance(name);
}
