
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_controller_dev {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_reset_controller_release ;
 int devres_add (struct device*,struct reset_controller_dev**) ;
 struct reset_controller_dev** devres_alloc (int ,int,int ) ;
 int devres_free (struct reset_controller_dev**) ;
 int reset_controller_register (struct reset_controller_dev*) ;

int devm_reset_controller_register(struct device *dev,
       struct reset_controller_dev *rcdev)
{
 struct reset_controller_dev **rcdevp;
 int ret;

 rcdevp = devres_alloc(devm_reset_controller_release, sizeof(*rcdevp),
         GFP_KERNEL);
 if (!rcdevp)
  return -ENOMEM;

 ret = reset_controller_register(rcdev);
 if (!ret) {
  *rcdevp = rcdev;
  devres_add(dev, rcdevp);
 } else {
  devres_free(rcdevp);
 }

 return ret;
}
