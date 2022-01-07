
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slim_eaddr {int dummy; } ;
struct slim_device {int dummy; } ;
struct slim_controller {int dev; } ;
struct device {int dummy; } ;


 struct device* device_find_child (int ,struct slim_eaddr*,int ) ;
 int slim_match_dev ;
 struct slim_device* to_slim_device (struct device*) ;

__attribute__((used)) static struct slim_device *find_slim_device(struct slim_controller *ctrl,
         struct slim_eaddr *eaddr)
{
 struct slim_device *sbdev;
 struct device *dev;

 dev = device_find_child(ctrl->dev, eaddr, slim_match_dev);
 if (dev) {
  sbdev = to_slim_device(dev);
  return sbdev;
 }

 return ((void*)0);
}
