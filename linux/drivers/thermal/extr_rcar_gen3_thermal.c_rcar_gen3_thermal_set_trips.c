
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_gen3_thermal_tsc {int low; int high; } ;


 int REG_GEN3_IRQTEMP1 ;
 int REG_GEN3_IRQTEMP2 ;
 int clamp_val (int,int,int) ;
 int rcar_gen3_thermal_mcelsius_to_temp (struct rcar_gen3_thermal_tsc*,int) ;
 int rcar_gen3_thermal_write (struct rcar_gen3_thermal_tsc*,int ,int ) ;

__attribute__((used)) static int rcar_gen3_thermal_set_trips(void *devdata, int low, int high)
{
 struct rcar_gen3_thermal_tsc *tsc = devdata;

 low = clamp_val(low, -40000, 120000);
 high = clamp_val(high, -40000, 120000);

 rcar_gen3_thermal_write(tsc, REG_GEN3_IRQTEMP1,
    rcar_gen3_thermal_mcelsius_to_temp(tsc, low));

 rcar_gen3_thermal_write(tsc, REG_GEN3_IRQTEMP2,
    rcar_gen3_thermal_mcelsius_to_temp(tsc, high));

 tsc->low = low;
 tsc->high = high;

 return 0;
}
