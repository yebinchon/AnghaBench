
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct bcm2835_vchi_ctx {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int bcm2835_devm_free_vchi_ctx ;
 int bcm2835_new_vchi_ctx (struct device*,struct bcm2835_vchi_ctx*) ;
 int devres_add (struct device*,struct bcm2835_vchi_ctx*) ;
 struct bcm2835_vchi_ctx* devres_alloc (int ,int,int ) ;
 int devres_free (struct bcm2835_vchi_ctx*) ;

__attribute__((used)) static int bcm2835_devm_add_vchi_ctx(struct device *dev)
{
 struct bcm2835_vchi_ctx *vchi_ctx;
 int ret;

 vchi_ctx = devres_alloc(bcm2835_devm_free_vchi_ctx, sizeof(*vchi_ctx),
    GFP_KERNEL);
 if (!vchi_ctx)
  return -ENOMEM;

 ret = bcm2835_new_vchi_ctx(dev, vchi_ctx);
 if (ret) {
  devres_free(vchi_ctx);
  return ret;
 }

 devres_add(dev, vchi_ctx);

 return 0;
}
