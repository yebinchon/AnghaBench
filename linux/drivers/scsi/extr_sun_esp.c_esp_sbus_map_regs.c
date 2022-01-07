
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct platform_device {struct resource* resource; } ;
struct esp {int regs; int dev; } ;


 int ENOMEM ;
 int SBUS_ESP_REG_SIZE ;
 int of_ioremap (struct resource*,int ,int ,char*) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static int esp_sbus_map_regs(struct esp *esp, int hme)
{
 struct platform_device *op = to_platform_device(esp->dev);
 struct resource *res;




 if (hme)
  res = &op->resource[1];
 else
  res = &op->resource[0];

 esp->regs = of_ioremap(res, 0, SBUS_ESP_REG_SIZE, "ESP");
 if (!esp->regs)
  return -ENOMEM;

 return 0;
}
