
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpmsg_driver {struct rpmsg_device_id* id_table; } ;
struct rpmsg_device_id {scalar_t__* name; } ;
struct rpmsg_device {scalar_t__ driver_override; } ;
struct device_driver {int name; } ;
struct device {int dummy; } ;


 int of_driver_match_device (struct device*,struct device_driver*) ;
 scalar_t__ rpmsg_id_match (struct rpmsg_device*,struct rpmsg_device_id const*) ;
 int strcmp (scalar_t__,int ) ;
 struct rpmsg_device* to_rpmsg_device (struct device*) ;
 struct rpmsg_driver* to_rpmsg_driver (struct device_driver*) ;

__attribute__((used)) static int rpmsg_dev_match(struct device *dev, struct device_driver *drv)
{
 struct rpmsg_device *rpdev = to_rpmsg_device(dev);
 struct rpmsg_driver *rpdrv = to_rpmsg_driver(drv);
 const struct rpmsg_device_id *ids = rpdrv->id_table;
 unsigned int i;

 if (rpdev->driver_override)
  return !strcmp(rpdev->driver_override, drv->name);

 if (ids)
  for (i = 0; ids[i].name[0]; i++)
   if (rpmsg_id_match(rpdev, &ids[i]))
    return 1;

 return of_driver_match_device(dev, drv);
}
