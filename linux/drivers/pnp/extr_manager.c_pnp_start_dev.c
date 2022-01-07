
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pnp_dev {int dev; TYPE_1__* protocol; } ;
struct TYPE_2__ {scalar_t__ (* set ) (struct pnp_dev*) ;} ;


 int EINVAL ;
 int EIO ;
 int dbg_pnp_show_resources (struct pnp_dev*,char*) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int pnp_can_write (struct pnp_dev*) ;
 int pnp_dbg (int *,char*) ;
 scalar_t__ stub1 (struct pnp_dev*) ;

int pnp_start_dev(struct pnp_dev *dev)
{
 if (!pnp_can_write(dev)) {
  pnp_dbg(&dev->dev, "activation not supported\n");
  return -EINVAL;
 }

 dbg_pnp_show_resources(dev, "pnp_start_dev");
 if (dev->protocol->set(dev) < 0) {
  dev_err(&dev->dev, "activation failed\n");
  return -EIO;
 }

 dev_info(&dev->dev, "activated\n");
 return 0;
}
