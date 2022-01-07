
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int of_node; struct device* parent; int * bus; int * type; } ;
struct spmi_controller {int nr; TYPE_1__ dev; } ;
struct device {int of_node; } ;


 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 int ctrl_ida ;
 int dev_dbg (TYPE_1__*,char*,struct spmi_controller*,int) ;
 int dev_err (struct device*,char*) ;
 int dev_set_name (TYPE_1__*,char*,int) ;
 int device_initialize (TYPE_1__*) ;
 int ida_simple_get (int *,int ,int ,int ) ;
 struct spmi_controller* kzalloc (int,int ) ;
 int spmi_bus_type ;
 int spmi_controller_put (struct spmi_controller*) ;
 int spmi_controller_set_drvdata (struct spmi_controller*,struct spmi_controller*) ;
 int spmi_ctrl_type ;

struct spmi_controller *spmi_controller_alloc(struct device *parent,
           size_t size)
{
 struct spmi_controller *ctrl;
 int id;

 if (WARN_ON(!parent))
  return ((void*)0);

 ctrl = kzalloc(sizeof(*ctrl) + size, GFP_KERNEL);
 if (!ctrl)
  return ((void*)0);

 device_initialize(&ctrl->dev);
 ctrl->dev.type = &spmi_ctrl_type;
 ctrl->dev.bus = &spmi_bus_type;
 ctrl->dev.parent = parent;
 ctrl->dev.of_node = parent->of_node;
 spmi_controller_set_drvdata(ctrl, &ctrl[1]);

 id = ida_simple_get(&ctrl_ida, 0, 0, GFP_KERNEL);
 if (id < 0) {
  dev_err(parent,
   "unable to allocate SPMI controller identifier.\n");
  spmi_controller_put(ctrl);
  return ((void*)0);
 }

 ctrl->nr = id;
 dev_set_name(&ctrl->dev, "spmi-%d", id);

 dev_dbg(&ctrl->dev, "allocated controller 0x%p id %d\n", ctrl, id);
 return ctrl;
}
