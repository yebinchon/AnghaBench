
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_controller {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_spi_unregister ;
 int devres_add (struct device*,struct spi_controller**) ;
 struct spi_controller** devres_alloc (int ,int,int ) ;
 int devres_free (struct spi_controller**) ;
 int spi_register_controller (struct spi_controller*) ;

int devm_spi_register_controller(struct device *dev,
     struct spi_controller *ctlr)
{
 struct spi_controller **ptr;
 int ret;

 ptr = devres_alloc(devm_spi_unregister, sizeof(*ptr), GFP_KERNEL);
 if (!ptr)
  return -ENOMEM;

 ret = spi_register_controller(ctlr);
 if (!ret) {
  *ptr = ctlr;
  devres_add(dev, ptr);
 } else {
  devres_free(ptr);
 }

 return ret;
}
