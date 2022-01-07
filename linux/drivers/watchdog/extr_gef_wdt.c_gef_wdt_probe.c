
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int ENOMEM ;
 int bus_clk ;
 int fsl_get_sys_freq () ;
 int gef_wdt_handler_disable () ;
 int gef_wdt_miscdev ;
 int * gef_wdt_regs ;
 int gef_wdt_set_timeout (int) ;
 int misc_register (int *) ;
 int * of_iomap (int ,int ) ;

__attribute__((used)) static int gef_wdt_probe(struct platform_device *dev)
{
 int timeout = 10;
 u32 freq;

 bus_clk = 133;

 freq = fsl_get_sys_freq();
 if (freq != -1)
  bus_clk = freq;


 gef_wdt_regs = of_iomap(dev->dev.of_node, 0);
 if (gef_wdt_regs == ((void*)0))
  return -ENOMEM;

 gef_wdt_set_timeout(timeout);

 gef_wdt_handler_disable();

 return misc_register(&gef_wdt_miscdev);
}
