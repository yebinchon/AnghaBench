
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_function {TYPE_1__* config; } ;
struct usb_composite_dev {int dummy; } ;
struct f_gether {int port; } ;
struct TYPE_2__ {struct usb_composite_dev* cdev; } ;


 int DBG (struct usb_composite_dev*,char*) ;
 struct f_gether* func_to_geth (struct usb_function*) ;
 int gether_disconnect (int *) ;

__attribute__((used)) static void geth_disable(struct usb_function *f)
{
 struct f_gether *geth = func_to_geth(f);
 struct usb_composite_dev *cdev = f->config->cdev;

 DBG(cdev, "net deactivated\n");
 gether_disconnect(&geth->port);
}
