
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct ccw_device {int dummy; } ;
struct ccw_dev_id {int dummy; } ;


 struct device* bus_find_device (int *,int *,struct ccw_dev_id*,int ) ;
 int ccw_bus_type ;
 int match_dev_id ;
 struct ccw_device* to_ccwdev (struct device*) ;

struct ccw_device *get_ccwdev_by_dev_id(struct ccw_dev_id *dev_id)
{
 struct device *dev;

 dev = bus_find_device(&ccw_bus_type, ((void*)0), dev_id, match_dev_id);

 return dev ? to_ccwdev(dev) : ((void*)0);
}
