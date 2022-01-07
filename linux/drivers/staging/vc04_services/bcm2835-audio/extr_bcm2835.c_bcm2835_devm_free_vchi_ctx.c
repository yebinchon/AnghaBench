
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct bcm2835_vchi_ctx {int dummy; } ;


 int bcm2835_free_vchi_ctx (struct bcm2835_vchi_ctx*) ;

__attribute__((used)) static void bcm2835_devm_free_vchi_ctx(struct device *dev, void *res)
{
 struct bcm2835_vchi_ctx *vchi_ctx = res;

 bcm2835_free_vchi_ctx(vchi_ctx);
}
