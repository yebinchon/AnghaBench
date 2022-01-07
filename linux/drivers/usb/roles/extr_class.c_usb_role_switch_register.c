
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct usb_role_switch_desc {int fwnode; int get; scalar_t__ set; int udc; int usb3_port; int usb2_port; int allow_userspace_control; } ;
struct TYPE_4__ {int * type; int class; int fwnode; struct device* parent; } ;
struct usb_role_switch {TYPE_1__ dev; int get; scalar_t__ set; int udc; int usb3_port; int usb2_port; int allow_userspace_control; int lock; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 struct usb_role_switch* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int dev_name (struct device*) ;
 int dev_set_name (TYPE_1__*,char*,int ) ;
 int device_register (TYPE_1__*) ;
 struct usb_role_switch* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int put_device (TYPE_1__*) ;
 int role_class ;
 int usb_role_dev_type ;

struct usb_role_switch *
usb_role_switch_register(struct device *parent,
    const struct usb_role_switch_desc *desc)
{
 struct usb_role_switch *sw;
 int ret;

 if (!desc || !desc->set)
  return ERR_PTR(-EINVAL);

 sw = kzalloc(sizeof(*sw), GFP_KERNEL);
 if (!sw)
  return ERR_PTR(-ENOMEM);

 mutex_init(&sw->lock);

 sw->allow_userspace_control = desc->allow_userspace_control;
 sw->usb2_port = desc->usb2_port;
 sw->usb3_port = desc->usb3_port;
 sw->udc = desc->udc;
 sw->set = desc->set;
 sw->get = desc->get;

 sw->dev.parent = parent;
 sw->dev.fwnode = desc->fwnode;
 sw->dev.class = role_class;
 sw->dev.type = &usb_role_dev_type;
 dev_set_name(&sw->dev, "%s-role-switch", dev_name(parent));

 ret = device_register(&sw->dev);
 if (ret) {
  put_device(&sw->dev);
  return ERR_PTR(ret);
 }



 return sw;
}
