
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_dev {int dummy; } ;
struct device {int dummy; } ;


 struct uwb_dev* to_uwb_dev (struct device*) ;
 int uwb_dev_get (struct uwb_dev*) ;

__attribute__((used)) static
int __uwb_dev_try_get(struct device *dev, void *__target_uwb_dev)
{
 struct uwb_dev *target_uwb_dev = __target_uwb_dev;
 struct uwb_dev *uwb_dev = to_uwb_dev(dev);
 if (uwb_dev == target_uwb_dev) {
  uwb_dev_get(uwb_dev);
  return 1;
 } else
  return 0;
}
