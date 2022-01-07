
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rockchip_tsadc_chip {int (* get_temp ) (int *,int ,int ,int*) ;int table; } ;
struct rockchip_thermal_sensor {int id; struct rockchip_thermal_data* thermal; } ;
struct rockchip_thermal_data {TYPE_1__* pdev; int regs; struct rockchip_tsadc_chip* chip; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*,int ,int,int) ;
 int stub1 (int *,int ,int ,int*) ;

__attribute__((used)) static int rockchip_thermal_get_temp(void *_sensor, int *out_temp)
{
 struct rockchip_thermal_sensor *sensor = _sensor;
 struct rockchip_thermal_data *thermal = sensor->thermal;
 const struct rockchip_tsadc_chip *tsadc = sensor->thermal->chip;
 int retval;

 retval = tsadc->get_temp(&tsadc->table,
     sensor->id, thermal->regs, out_temp);
 dev_dbg(&thermal->pdev->dev, "sensor %d - temp: %d, retval: %d\n",
  sensor->id, *out_temp, retval);

 return retval;
}
