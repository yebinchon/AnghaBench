
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function {int dummy; } ;
struct printer_dev {int dummy; } ;


 int ENOTSUPP ;
 struct printer_dev* func_to_printer (struct usb_function*) ;
 int set_interface (struct printer_dev*,unsigned int) ;

__attribute__((used)) static int printer_func_set_alt(struct usb_function *f,
  unsigned intf, unsigned alt)
{
 struct printer_dev *dev = func_to_printer(f);
 int ret = -ENOTSUPP;

 if (!alt)
  ret = set_interface(dev, intf);

 return ret;
}
