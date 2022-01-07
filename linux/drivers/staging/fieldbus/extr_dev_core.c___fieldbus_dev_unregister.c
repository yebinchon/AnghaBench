
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct fieldbus_dev {int id; TYPE_1__ cdev; } ;


 int cdev_del (TYPE_1__*) ;
 int device_destroy (int *,int ) ;
 int fieldbus_class ;
 int fieldbus_ida ;
 int ida_simple_remove (int *,int ) ;

__attribute__((used)) static void __fieldbus_dev_unregister(struct fieldbus_dev *fb)
{
 if (!fb)
  return;
 device_destroy(&fieldbus_class, fb->cdev.dev);
 cdev_del(&fb->cdev);
 ida_simple_remove(&fieldbus_ida, fb->id);
}
