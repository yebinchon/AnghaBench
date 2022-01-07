
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int of_node; struct device* parent; int * bus; int * type; } ;
struct serdev_controller {int nr; TYPE_1__ dev; } ;
struct device {int of_node; } ;


 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 int ctrl_ida ;
 int dev_dbg (TYPE_1__*,char*,struct serdev_controller*,int) ;
 int dev_err (struct device*,char*) ;
 int dev_set_name (TYPE_1__*,char*,int) ;
 int device_initialize (TYPE_1__*) ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int kfree (struct serdev_controller*) ;
 struct serdev_controller* kzalloc (int,int ) ;
 int pm_runtime_no_callbacks (TYPE_1__*) ;
 int pm_suspend_ignore_children (TYPE_1__*,int) ;
 int serdev_bus_type ;
 int serdev_controller_set_drvdata (struct serdev_controller*,struct serdev_controller*) ;
 int serdev_ctrl_type ;

struct serdev_controller *serdev_controller_alloc(struct device *parent,
           size_t size)
{
 struct serdev_controller *ctrl;
 int id;

 if (WARN_ON(!parent))
  return ((void*)0);

 ctrl = kzalloc(sizeof(*ctrl) + size, GFP_KERNEL);
 if (!ctrl)
  return ((void*)0);

 id = ida_simple_get(&ctrl_ida, 0, 0, GFP_KERNEL);
 if (id < 0) {
  dev_err(parent,
   "unable to allocate serdev controller identifier.\n");
  goto err_free;
 }

 ctrl->nr = id;

 device_initialize(&ctrl->dev);
 ctrl->dev.type = &serdev_ctrl_type;
 ctrl->dev.bus = &serdev_bus_type;
 ctrl->dev.parent = parent;
 ctrl->dev.of_node = parent->of_node;
 serdev_controller_set_drvdata(ctrl, &ctrl[1]);

 dev_set_name(&ctrl->dev, "serial%d", id);

 pm_runtime_no_callbacks(&ctrl->dev);
 pm_suspend_ignore_children(&ctrl->dev, 1);

 dev_dbg(&ctrl->dev, "allocated controller 0x%p id %d\n", ctrl, id);
 return ctrl;

err_free:
 kfree(ctrl);

 return ((void*)0);
}
