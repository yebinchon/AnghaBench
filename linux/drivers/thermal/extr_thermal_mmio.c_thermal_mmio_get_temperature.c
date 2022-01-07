
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_mmio {int (* read_mmio ) (int ) ;int mask; int factor; int mmio_base; } ;


 int stub1 (int ) ;

__attribute__((used)) static int thermal_mmio_get_temperature(void *private, int *temp)
{
 int t;
 struct thermal_mmio *sensor =
  (struct thermal_mmio *)private;

 t = sensor->read_mmio(sensor->mmio_base) & sensor->mask;
 t *= sensor->factor;

 *temp = t;

 return 0;
}
