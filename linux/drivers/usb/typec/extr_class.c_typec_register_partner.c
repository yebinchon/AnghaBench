
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct typec_port {int dev; } ;
struct typec_partner_desc {scalar_t__ identity; int accessory; int usb_pd; } ;
struct TYPE_4__ {int * type; int * parent; int class; int groups; } ;
struct typec_partner {TYPE_1__ dev; scalar_t__ identity; int accessory; int usb_pd; int mode_ids; } ;


 int ENOMEM ;
 struct typec_partner* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int dev_err (int *,char*,int) ;
 int dev_name (int *) ;
 int dev_set_name (TYPE_1__*,char*,int ) ;
 int device_register (TYPE_1__*) ;
 int ida_init (int *) ;
 struct typec_partner* kzalloc (int,int ) ;
 int put_device (TYPE_1__*) ;
 int typec_class ;
 int typec_partner_dev_type ;
 int usb_pd_id_groups ;

struct typec_partner *typec_register_partner(struct typec_port *port,
          struct typec_partner_desc *desc)
{
 struct typec_partner *partner;
 int ret;

 partner = kzalloc(sizeof(*partner), GFP_KERNEL);
 if (!partner)
  return ERR_PTR(-ENOMEM);

 ida_init(&partner->mode_ids);
 partner->usb_pd = desc->usb_pd;
 partner->accessory = desc->accessory;

 if (desc->identity) {




  partner->dev.groups = usb_pd_id_groups;
  partner->identity = desc->identity;
 }

 partner->dev.class = typec_class;
 partner->dev.parent = &port->dev;
 partner->dev.type = &typec_partner_dev_type;
 dev_set_name(&partner->dev, "%s-partner", dev_name(&port->dev));

 ret = device_register(&partner->dev);
 if (ret) {
  dev_err(&port->dev, "failed to register partner (%d)\n", ret);
  put_device(&partner->dev);
  return ERR_PTR(ret);
 }

 return partner;
}
