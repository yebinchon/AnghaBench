
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct usb_function {TYPE_1__* config; } ;
struct usb_composite_dev {TYPE_4__* gadget; } ;
struct TYPE_7__ {TYPE_5__* out; TYPE_5__* in; } ;
struct f_gser {int port_num; TYPE_2__ port; } ;
struct TYPE_9__ {int * desc; scalar_t__ enabled; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_6__ {struct usb_composite_dev* cdev; } ;


 int EINVAL ;
 scalar_t__ config_ep_by_speed (TYPE_4__*,struct usb_function*,TYPE_5__*) ;
 int dev_dbg (int *,char*,int ) ;
 struct f_gser* func_to_gser (struct usb_function*) ;
 int gserial_connect (TYPE_2__*,int ) ;
 int gserial_disconnect (TYPE_2__*) ;

__attribute__((used)) static int gser_set_alt(struct usb_function *f, unsigned intf, unsigned alt)
{
 struct f_gser *gser = func_to_gser(f);
 struct usb_composite_dev *cdev = f->config->cdev;



 if (gser->port.in->enabled) {
  dev_dbg(&cdev->gadget->dev,
   "reset generic ttyGS%d\n", gser->port_num);
  gserial_disconnect(&gser->port);
 }
 if (!gser->port.in->desc || !gser->port.out->desc) {
  dev_dbg(&cdev->gadget->dev,
   "activate generic ttyGS%d\n", gser->port_num);
  if (config_ep_by_speed(cdev->gadget, f, gser->port.in) ||
      config_ep_by_speed(cdev->gadget, f, gser->port.out)) {
   gser->port.in->desc = ((void*)0);
   gser->port.out->desc = ((void*)0);
   return -EINVAL;
  }
 }
 gserial_connect(&gser->port, gser->port_num);
 return 0;
}
