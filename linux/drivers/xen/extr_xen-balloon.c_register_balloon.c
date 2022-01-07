
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int groups; int * bus; scalar_t__ id; } ;


 int balloon_groups ;
 int balloon_subsys ;
 int bus_unregister (int *) ;
 int device_register (struct device*) ;
 int subsys_system_register (int *,int *) ;

__attribute__((used)) static int register_balloon(struct device *dev)
{
 int error;

 error = subsys_system_register(&balloon_subsys, ((void*)0));
 if (error)
  return error;

 dev->id = 0;
 dev->bus = &balloon_subsys;
 dev->groups = balloon_groups;

 error = device_register(dev);
 if (error) {
  bus_unregister(&balloon_subsys);
  return error;
 }

 return 0;
}
