
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
struct TYPE_7__ {TYPE_5__* in; TYPE_5__* out; } ;
struct f_obex {unsigned int ctrl_id; unsigned int data_id; unsigned int cur_alt; int port_num; TYPE_2__ port; } ;
struct TYPE_9__ {int * desc; scalar_t__ enabled; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_6__ {struct usb_composite_dev* cdev; } ;


 int EINVAL ;
 scalar_t__ config_ep_by_speed (TYPE_4__*,struct usb_function*,TYPE_5__*) ;
 int dev_dbg (int *,char*,int ) ;
 struct f_obex* func_to_obex (struct usb_function*) ;
 int gserial_connect (TYPE_2__*,int ) ;
 int gserial_disconnect (TYPE_2__*) ;

__attribute__((used)) static int obex_set_alt(struct usb_function *f, unsigned intf, unsigned alt)
{
 struct f_obex *obex = func_to_obex(f);
 struct usb_composite_dev *cdev = f->config->cdev;

 if (intf == obex->ctrl_id) {
  if (alt != 0)
   goto fail;

  dev_dbg(&cdev->gadget->dev,
   "reset obex ttyGS%d control\n", obex->port_num);

 } else if (intf == obex->data_id) {
  if (alt > 1)
   goto fail;

  if (obex->port.in->enabled) {
   dev_dbg(&cdev->gadget->dev,
    "reset obex ttyGS%d\n", obex->port_num);
   gserial_disconnect(&obex->port);
  }

  if (!obex->port.in->desc || !obex->port.out->desc) {
   dev_dbg(&cdev->gadget->dev,
    "init obex ttyGS%d\n", obex->port_num);
   if (config_ep_by_speed(cdev->gadget, f,
            obex->port.in) ||
       config_ep_by_speed(cdev->gadget, f,
            obex->port.out)) {
    obex->port.out->desc = ((void*)0);
    obex->port.in->desc = ((void*)0);
    goto fail;
   }
  }

  if (alt == 1) {
   dev_dbg(&cdev->gadget->dev,
    "activate obex ttyGS%d\n", obex->port_num);
   gserial_connect(&obex->port, obex->port_num);
  }

 } else
  goto fail;

 obex->cur_alt = alt;

 return 0;

fail:
 return -EINVAL;
}
