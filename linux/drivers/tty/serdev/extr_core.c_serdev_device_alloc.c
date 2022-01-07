
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * type; int * bus; int * parent; } ;
struct serdev_device {int write_lock; int write_comp; TYPE_1__ dev; struct serdev_controller* ctrl; } ;
struct serdev_controller {int dev; } ;


 int GFP_KERNEL ;
 int device_initialize (TYPE_1__*) ;
 int init_completion (int *) ;
 struct serdev_device* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int serdev_bus_type ;
 int serdev_device_type ;

struct serdev_device *serdev_device_alloc(struct serdev_controller *ctrl)
{
 struct serdev_device *serdev;

 serdev = kzalloc(sizeof(*serdev), GFP_KERNEL);
 if (!serdev)
  return ((void*)0);

 serdev->ctrl = ctrl;
 device_initialize(&serdev->dev);
 serdev->dev.parent = &ctrl->dev;
 serdev->dev.bus = &serdev_bus_type;
 serdev->dev.type = &serdev_device_type;
 init_completion(&serdev->write_comp);
 mutex_init(&serdev->write_lock);
 return serdev;
}
