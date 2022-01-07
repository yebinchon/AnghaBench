
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


struct device {int of_node; } ;
struct TYPE_15__ {int of_node; } ;
struct TYPE_18__ {TYPE_2__ dev; int speed; int max_speed; int name; int * ep0; int * ops; int ep_list; } ;
struct TYPE_13__ {int ep; } ;
struct ast_vhub_dev {unsigned int index; int registered; TYPE_4__* port_dev; TYPE_5__ gadget; TYPE_12__ ep0; scalar_t__ regs; int name; struct ast_vhub* vhub; } ;
struct ast_vhub {TYPE_3__* pdev; scalar_t__ force_usb1; scalar_t__ regs; TYPE_1__* ports; } ;
struct TYPE_17__ {struct device* parent; int release; } ;
struct TYPE_16__ {struct device dev; } ;
struct TYPE_14__ {struct ast_vhub_dev dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int KBUILD_MODNAME ;
 int USB_SPEED_FULL ;
 int USB_SPEED_HIGH ;
 int USB_SPEED_UNKNOWN ;
 int ast_vhub_dev_release ;
 int ast_vhub_init_ep0 (struct ast_vhub*,TYPE_12__*,struct ast_vhub_dev*) ;
 int ast_vhub_udc_ops ;
 int dev_name (struct device*) ;
 int dev_set_name (TYPE_4__*,char*,int ,unsigned int) ;
 int device_add (TYPE_4__*) ;
 int device_del (TYPE_4__*) ;
 int device_initialize (TYPE_4__*) ;
 int devm_kasprintf (struct device*,int ,char*,unsigned int) ;
 TYPE_4__* kzalloc (int,int ) ;
 int put_device (TYPE_4__*) ;
 int usb_add_gadget_udc (TYPE_4__*,TYPE_5__*) ;

int ast_vhub_init_dev(struct ast_vhub *vhub, unsigned int idx)
{
 struct ast_vhub_dev *d = &vhub->ports[idx].dev;
 struct device *parent = &vhub->pdev->dev;
 int rc;

 d->vhub = vhub;
 d->index = idx;
 d->name = devm_kasprintf(parent, GFP_KERNEL, "port%d", idx+1);
 d->regs = vhub->regs + 0x100 + 0x10 * idx;

 ast_vhub_init_ep0(vhub, &d->ep0, d);






 d->port_dev = kzalloc(sizeof(struct device), GFP_KERNEL);
 if (!d->port_dev)
  return -ENOMEM;
 device_initialize(d->port_dev);
 d->port_dev->release = ast_vhub_dev_release;
 d->port_dev->parent = parent;
 dev_set_name(d->port_dev, "%s:p%d", dev_name(parent), idx + 1);
 rc = device_add(d->port_dev);
 if (rc)
  goto fail_add;


 INIT_LIST_HEAD(&d->gadget.ep_list);
 d->gadget.ops = &ast_vhub_udc_ops;
 d->gadget.ep0 = &d->ep0.ep;
 d->gadget.name = KBUILD_MODNAME;
 if (vhub->force_usb1)
  d->gadget.max_speed = USB_SPEED_FULL;
 else
  d->gadget.max_speed = USB_SPEED_HIGH;
 d->gadget.speed = USB_SPEED_UNKNOWN;
 d->gadget.dev.of_node = vhub->pdev->dev.of_node;

 rc = usb_add_gadget_udc(d->port_dev, &d->gadget);
 if (rc != 0)
  goto fail_udc;
 d->registered = 1;

 return 0;
 fail_udc:
 device_del(d->port_dev);
 fail_add:
 put_device(d->port_dev);

 return rc;
}
