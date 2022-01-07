
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ parent; } ;
struct regulator_dev {int * supply; scalar_t__ use_count; TYPE_2__ dev; TYPE_1__* desc; int supply_name; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int name; } ;


 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (struct regulator_dev*) ;
 int PTR_ERR (struct regulator_dev*) ;
 int _regulator_put (int *) ;
 int dev_err (struct device*,char*,int ,int ) ;
 int device_is_bound (scalar_t__) ;
 struct regulator_dev* dummy_regulator_rdev ;
 int get_device (TYPE_2__*) ;
 scalar_t__ have_full_constraints () ;
 int put_device (TYPE_2__*) ;
 struct regulator_dev* regulator_dev_lookup (struct device*,int ) ;
 int regulator_enable (int *) ;
 int set_supply (struct regulator_dev*,struct regulator_dev*) ;

__attribute__((used)) static int regulator_resolve_supply(struct regulator_dev *rdev)
{
 struct regulator_dev *r;
 struct device *dev = rdev->dev.parent;
 int ret;


 if (!rdev->supply_name)
  return 0;


 if (rdev->supply)
  return 0;

 r = regulator_dev_lookup(dev, rdev->supply_name);
 if (IS_ERR(r)) {
  ret = PTR_ERR(r);


  if (ret == -EPROBE_DEFER)
   return ret;

  if (have_full_constraints()) {
   r = dummy_regulator_rdev;
   get_device(&r->dev);
  } else {
   dev_err(dev, "Failed to resolve %s-supply for %s\n",
    rdev->supply_name, rdev->desc->name);
   return -EPROBE_DEFER;
  }
 }







 if (r->dev.parent && r->dev.parent != rdev->dev.parent) {
  if (!device_is_bound(r->dev.parent)) {
   put_device(&r->dev);
   return -EPROBE_DEFER;
  }
 }


 ret = regulator_resolve_supply(r);
 if (ret < 0) {
  put_device(&r->dev);
  return ret;
 }

 ret = set_supply(rdev, r);
 if (ret < 0) {
  put_device(&r->dev);
  return ret;
 }






 if (rdev->use_count) {
  ret = regulator_enable(rdev->supply);
  if (ret < 0) {
   _regulator_put(rdev->supply);
   rdev->supply = ((void*)0);
   return ret;
  }
 }

 return 0;
}
