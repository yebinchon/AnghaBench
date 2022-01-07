
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rio_dev {int asm_did; int asm_vid; int did; int vid; } ;
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 scalar_t__ add_uevent_var (struct kobj_uevent_env*,char*,int ,int ,int ,int ) ;
 struct rio_dev* to_rio_dev (struct device*) ;

__attribute__((used)) static int rio_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 struct rio_dev *rdev;

 if (!dev)
  return -ENODEV;

 rdev = to_rio_dev(dev);
 if (!rdev)
  return -ENODEV;

 if (add_uevent_var(env, "MODALIAS=rapidio:v%04Xd%04Xav%04Xad%04X",
      rdev->vid, rdev->did, rdev->asm_vid, rdev->asm_did))
  return -ENOMEM;
 return 0;
}
