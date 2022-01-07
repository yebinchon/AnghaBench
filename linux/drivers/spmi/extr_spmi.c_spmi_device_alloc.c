
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * type; int * bus; int * parent; } ;
struct spmi_device {TYPE_1__ dev; struct spmi_controller* ctrl; } ;
struct spmi_controller {int dev; } ;


 int GFP_KERNEL ;
 int device_initialize (TYPE_1__*) ;
 struct spmi_device* kzalloc (int,int ) ;
 int spmi_bus_type ;
 int spmi_dev_type ;

struct spmi_device *spmi_device_alloc(struct spmi_controller *ctrl)
{
 struct spmi_device *sdev;

 sdev = kzalloc(sizeof(*sdev), GFP_KERNEL);
 if (!sdev)
  return ((void*)0);

 sdev->ctrl = ctrl;
 device_initialize(&sdev->dev);
 sdev->dev.parent = &ctrl->dev;
 sdev->dev.bus = &spmi_bus_type;
 sdev->dev.type = &spmi_dev_type;
 return sdev;
}
