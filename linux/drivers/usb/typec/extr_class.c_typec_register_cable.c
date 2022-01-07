
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct typec_port {int dev; } ;
struct typec_cable_desc {scalar_t__ identity; int active; int type; } ;
struct TYPE_4__ {int * type; int * parent; int class; int groups; } ;
struct typec_cable {TYPE_1__ dev; scalar_t__ identity; int active; int type; } ;


 int ENOMEM ;
 struct typec_cable* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int dev_err (int *,char*,int) ;
 int dev_name (int *) ;
 int dev_set_name (TYPE_1__*,char*,int ) ;
 int device_register (TYPE_1__*) ;
 struct typec_cable* kzalloc (int,int ) ;
 int put_device (TYPE_1__*) ;
 int typec_cable_dev_type ;
 int typec_class ;
 int usb_pd_id_groups ;

struct typec_cable *typec_register_cable(struct typec_port *port,
      struct typec_cable_desc *desc)
{
 struct typec_cable *cable;
 int ret;

 cable = kzalloc(sizeof(*cable), GFP_KERNEL);
 if (!cable)
  return ERR_PTR(-ENOMEM);

 cable->type = desc->type;
 cable->active = desc->active;

 if (desc->identity) {




  cable->dev.groups = usb_pd_id_groups;
  cable->identity = desc->identity;
 }

 cable->dev.class = typec_class;
 cable->dev.parent = &port->dev;
 cable->dev.type = &typec_cable_dev_type;
 dev_set_name(&cable->dev, "%s-cable", dev_name(&port->dev));

 ret = device_register(&cable->dev);
 if (ret) {
  dev_err(&port->dev, "failed to register cable (%d)\n", ret);
  put_device(&cable->dev);
  return ERR_PTR(ret);
 }

 return cable;
}
