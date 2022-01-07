
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct esp {int cfreq; int dev; } ;
struct device_node {struct device_node* parent; } ;


 int of_getintprop_default (struct device_node*,char*,int ) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static void esp_get_clock_params(struct esp *esp)
{
 struct platform_device *op = to_platform_device(esp->dev);
 struct device_node *bus_dp, *dp;
 int fmhz;

 dp = op->dev.of_node;
 bus_dp = dp->parent;

 fmhz = of_getintprop_default(dp, "clock-frequency", 0);
 if (fmhz == 0)
  fmhz = of_getintprop_default(bus_dp, "clock-frequency", 0);

 esp->cfreq = fmhz;
}
