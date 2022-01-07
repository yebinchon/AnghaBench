
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rio_mport {int dummy; } ;
struct mport_dev {int dummy; } ;
struct device {int dummy; } ;
struct class_interface {int dummy; } ;


 int ENODEV ;
 struct mport_dev* mport_cdev_add (struct rio_mport*) ;
 struct rio_mport* to_rio_mport (struct device*) ;

__attribute__((used)) static int mport_add_mport(struct device *dev,
  struct class_interface *class_intf)
{
 struct rio_mport *mport = ((void*)0);
 struct mport_dev *chdev = ((void*)0);

 mport = to_rio_mport(dev);
 if (!mport)
  return -ENODEV;

 chdev = mport_cdev_add(mport);
 if (!chdev)
  return -ENODEV;

 return 0;
}
