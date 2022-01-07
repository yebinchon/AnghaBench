
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct platform_device {int dev; } ;
struct mv64x60_wdt_pdata {int timeout; int bus_clk; } ;


 int ENODEV ;
 int ENOMEM ;
 int IORESOURCE_MEM ;
 int bus_clk ;
 struct mv64x60_wdt_pdata* dev_get_platdata (int *) ;
 int * devm_ioremap (int *,int ,int ) ;
 int misc_register (int *) ;
 int mv64x60_wdt_handler_disable () ;
 int mv64x60_wdt_miscdev ;
 int * mv64x60_wdt_regs ;
 int mv64x60_wdt_set_timeout (int) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int mv64x60_wdt_probe(struct platform_device *dev)
{
 struct mv64x60_wdt_pdata *pdata = dev_get_platdata(&dev->dev);
 struct resource *r;
 int timeout = 10;

 bus_clk = 133;
 if (pdata) {
  timeout = pdata->timeout;
  bus_clk = pdata->bus_clk;
 }





 bus_clk++;
 bus_clk *= 1000000;

 r = platform_get_resource(dev, IORESOURCE_MEM, 0);
 if (!r)
  return -ENODEV;

 mv64x60_wdt_regs = devm_ioremap(&dev->dev, r->start, resource_size(r));
 if (mv64x60_wdt_regs == ((void*)0))
  return -ENOMEM;

 mv64x60_wdt_set_timeout(timeout);

 mv64x60_wdt_handler_disable();

 return misc_register(&mv64x60_wdt_miscdev);
}
