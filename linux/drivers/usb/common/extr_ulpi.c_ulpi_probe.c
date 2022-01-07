
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ulpi_driver {int (* probe ) (int ) ;} ;
struct device {int of_node; int driver; } ;


 int of_clk_set_defaults (int ,int) ;
 int stub1 (int ) ;
 int to_ulpi_dev (struct device*) ;
 struct ulpi_driver* to_ulpi_driver (int ) ;

__attribute__((used)) static int ulpi_probe(struct device *dev)
{
 struct ulpi_driver *drv = to_ulpi_driver(dev->driver);
 int ret;

 ret = of_clk_set_defaults(dev->of_node, 0);
 if (ret < 0)
  return ret;

 return drv->probe(to_ulpi_dev(dev));
}
