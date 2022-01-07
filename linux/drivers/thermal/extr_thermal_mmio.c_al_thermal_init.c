
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_mmio {int mask; int factor; int read_mmio; } ;
struct platform_device {int dummy; } ;


 int thermal_mmio_readb ;

__attribute__((used)) static int al_thermal_init(struct platform_device *pdev,
      struct thermal_mmio *sensor)
{
 sensor->read_mmio = thermal_mmio_readb;
 sensor->mask = 0xff;
 sensor->factor = 1000;

 return 0;
}
