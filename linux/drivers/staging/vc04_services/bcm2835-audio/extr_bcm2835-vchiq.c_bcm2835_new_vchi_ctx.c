
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct bcm2835_vchi_ctx {int * vchi_instance; } ;


 int EIO ;
 int dev_dbg (struct device*,char*,int) ;
 int dev_err (struct device*,char*,int) ;
 int kfree (int *) ;
 int vchi_connect (int *) ;
 int vchi_initialise (int **) ;

int bcm2835_new_vchi_ctx(struct device *dev, struct bcm2835_vchi_ctx *vchi_ctx)
{
 int ret;


 ret = vchi_initialise(&vchi_ctx->vchi_instance);
 if (ret) {
  dev_err(dev, "failed to initialise VCHI instance (ret=%d)\n",
   ret);
  return -EIO;
 }

 ret = vchi_connect(vchi_ctx->vchi_instance);
 if (ret) {
  dev_dbg(dev, "failed to connect VCHI instance (ret=%d)\n",
   ret);

  kfree(vchi_ctx->vchi_instance);
  vchi_ctx->vchi_instance = ((void*)0);

  return -EIO;
 }

 return 0;
}
