
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ulpi_ops {int dummy; } ;
struct ulpi {struct ulpi_ops const* ops; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct ulpi* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int kfree (struct ulpi*) ;
 struct ulpi* kzalloc (int,int ) ;
 int ulpi_register (struct device*,struct ulpi*) ;

struct ulpi *ulpi_register_interface(struct device *dev,
         const struct ulpi_ops *ops)
{
 struct ulpi *ulpi;
 int ret;

 ulpi = kzalloc(sizeof(*ulpi), GFP_KERNEL);
 if (!ulpi)
  return ERR_PTR(-ENOMEM);

 ulpi->ops = ops;

 ret = ulpi_register(dev, ulpi);
 if (ret) {
  kfree(ulpi);
  return ERR_PTR(ret);
 }

 return ulpi;
}
