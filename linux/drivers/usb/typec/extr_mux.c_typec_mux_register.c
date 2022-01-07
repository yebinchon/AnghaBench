
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct typec_mux_desc {int drvdata; int fwnode; scalar_t__ set; } ;
struct TYPE_5__ {int driver_data; int * type; int * class; int fwnode; struct device* parent; } ;
struct typec_mux {TYPE_1__ dev; scalar_t__ set; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 struct typec_mux* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int dev_err (struct device*,char*,int) ;
 int dev_name (struct device*) ;
 int dev_set_name (TYPE_1__*,char*,int ) ;
 int device_add (TYPE_1__*) ;
 int device_initialize (TYPE_1__*) ;
 struct typec_mux* kzalloc (int,int ) ;
 int put_device (TYPE_1__*) ;
 int typec_mux_class ;
 int typec_mux_dev_type ;

struct typec_mux *
typec_mux_register(struct device *parent, const struct typec_mux_desc *desc)
{
 struct typec_mux *mux;
 int ret;

 if (!desc || !desc->set)
  return ERR_PTR(-EINVAL);

 mux = kzalloc(sizeof(*mux), GFP_KERNEL);
 if (!mux)
  return ERR_PTR(-ENOMEM);

 mux->set = desc->set;

 device_initialize(&mux->dev);
 mux->dev.parent = parent;
 mux->dev.fwnode = desc->fwnode;
 mux->dev.class = &typec_mux_class;
 mux->dev.type = &typec_mux_dev_type;
 mux->dev.driver_data = desc->drvdata;
 dev_set_name(&mux->dev, "%s-mux", dev_name(parent));

 ret = device_add(&mux->dev);
 if (ret) {
  dev_err(parent, "failed to register mux (%d)\n", ret);
  put_device(&mux->dev);
  return ERR_PTR(ret);
 }

 return mux;
}
