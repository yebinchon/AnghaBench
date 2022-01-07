
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_dev {int active; } ;


 int EBUSY ;
 scalar_t__ pnp_auto_config_dev (struct pnp_dev*) ;
 int pnp_start_dev (struct pnp_dev*) ;

int pnp_activate_dev(struct pnp_dev *dev)
{
 int error;

 if (dev->active)
  return 0;


 if (pnp_auto_config_dev(dev))
  return -EBUSY;

 error = pnp_start_dev(dev);
 if (error)
  return error;

 dev->active = 1;
 return 0;
}
