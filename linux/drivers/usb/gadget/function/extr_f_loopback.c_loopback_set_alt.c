
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_function {TYPE_1__* config; } ;
struct usb_composite_dev {int dummy; } ;
struct f_loopback {int dummy; } ;
struct TYPE_2__ {struct usb_composite_dev* cdev; } ;


 int disable_loopback (struct f_loopback*) ;
 int enable_loopback (struct usb_composite_dev*,struct f_loopback*) ;
 struct f_loopback* func_to_loop (struct usb_function*) ;

__attribute__((used)) static int loopback_set_alt(struct usb_function *f,
  unsigned intf, unsigned alt)
{
 struct f_loopback *loop = func_to_loop(f);
 struct usb_composite_dev *cdev = f->config->cdev;


 disable_loopback(loop);
 return enable_loopback(cdev, loop);
}
