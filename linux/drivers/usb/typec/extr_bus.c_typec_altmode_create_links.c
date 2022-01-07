
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device {int kobj; } ;
struct TYPE_6__ {struct device dev; } ;
struct altmode {TYPE_3__ adev; TYPE_2__* partner; } ;
struct TYPE_4__ {struct device dev; } ;
struct TYPE_5__ {TYPE_1__ adev; } ;


 int sysfs_create_link (int *,int *,char*) ;
 int sysfs_remove_link (int *,char*) ;

__attribute__((used)) static int typec_altmode_create_links(struct altmode *alt)
{
 struct device *port_dev = &alt->partner->adev.dev;
 struct device *dev = &alt->adev.dev;
 int err;

 err = sysfs_create_link(&dev->kobj, &port_dev->kobj, "port");
 if (err)
  return err;

 err = sysfs_create_link(&port_dev->kobj, &dev->kobj, "partner");
 if (err)
  sysfs_remove_link(&dev->kobj, "port");

 return err;
}
