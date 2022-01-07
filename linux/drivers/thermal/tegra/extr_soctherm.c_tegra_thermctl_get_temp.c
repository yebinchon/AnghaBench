
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tegra_thermctl_zone {TYPE_1__* sg; int reg; } ;
struct TYPE_2__ {int sensor_temp_mask; } ;


 int REG_GET_MASK (int ,int ) ;
 int readl (int ) ;
 int translate_temp (int ) ;

__attribute__((used)) static int tegra_thermctl_get_temp(void *data, int *out_temp)
{
 struct tegra_thermctl_zone *zone = data;
 u32 val;

 val = readl(zone->reg);
 val = REG_GET_MASK(val, zone->sg->sensor_temp_mask);
 *out_temp = translate_temp(val);

 return 0;
}
