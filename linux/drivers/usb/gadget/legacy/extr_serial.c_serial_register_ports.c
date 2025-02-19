
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_configuration {int dummy; } ;
struct usb_composite_dev {int dummy; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int * f_serial ;
 int * fi_serial ;
 int n_ports ;
 int usb_add_config_only (struct usb_composite_dev*,struct usb_configuration*) ;
 int usb_add_function (struct usb_configuration*,int ) ;
 int usb_get_function (int ) ;
 int usb_get_function_instance (char const*) ;
 int usb_put_function (int ) ;
 int usb_put_function_instance (int ) ;
 int usb_remove_function (struct usb_configuration*,int ) ;

__attribute__((used)) static int serial_register_ports(struct usb_composite_dev *cdev,
  struct usb_configuration *c, const char *f_name)
{
 int i;
 int ret;

 ret = usb_add_config_only(cdev, c);
 if (ret)
  goto out;

 for (i = 0; i < n_ports; i++) {

  fi_serial[i] = usb_get_function_instance(f_name);
  if (IS_ERR(fi_serial[i])) {
   ret = PTR_ERR(fi_serial[i]);
   goto fail;
  }

  f_serial[i] = usb_get_function(fi_serial[i]);
  if (IS_ERR(f_serial[i])) {
   ret = PTR_ERR(f_serial[i]);
   goto err_get_func;
  }

  ret = usb_add_function(c, f_serial[i]);
  if (ret)
   goto err_add_func;
 }

 return 0;

err_add_func:
 usb_put_function(f_serial[i]);
err_get_func:
 usb_put_function_instance(fi_serial[i]);

fail:
 i--;
 while (i >= 0) {
  usb_remove_function(c, f_serial[i]);
  usb_put_function(f_serial[i]);
  usb_put_function_instance(fi_serial[i]);
  i--;
 }
out:
 return ret;
}
