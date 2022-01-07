
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_thermal_sensor {int int_enable; TYPE_1__* cdata; int int_thresh_hi; } ;
struct TYPE_2__ {int crit_temp; int temp_adjust_val; } ;


 int regmap_field_write (int ,int) ;

__attribute__((used)) static int st_mmap_enable_irq(struct st_thermal_sensor *sensor)
{
 int ret;


 ret = regmap_field_write(sensor->int_thresh_hi,
     sensor->cdata->crit_temp -
     sensor->cdata->temp_adjust_val);
 if (ret)
  return ret;

 return regmap_field_write(sensor->int_enable, 1);
}
