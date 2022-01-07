
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_dev {int num_dependent_sets; int dev; } ;


 int ENODEV ;
 int dev_err (int *,char*) ;
 int pnp_assign_resources (struct pnp_dev*,int) ;
 int pnp_can_configure (struct pnp_dev*) ;
 int pnp_dbg (int *,char*) ;

int pnp_auto_config_dev(struct pnp_dev *dev)
{
 int i, ret;

 if (!pnp_can_configure(dev)) {
  pnp_dbg(&dev->dev, "configuration not supported\n");
  return -ENODEV;
 }

 ret = pnp_assign_resources(dev, 0);
 if (ret == 0)
  return 0;

 for (i = 1; i < dev->num_dependent_sets; i++) {
  ret = pnp_assign_resources(dev, i);
  if (ret == 0)
   return 0;
 }

 dev_err(&dev->dev, "unable to assign resources\n");
 return ret;
}
