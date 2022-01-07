
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_thermal_sensor {int thres_temp; int id; struct hisi_thermal_data* data; } ;
struct hisi_thermal_data {int regs; int clk; } ;


 int HI6220_TEMP_LAG ;
 int HI6220_TEMP_RESET ;
 int clk_prepare_enable (int ) ;
 int hi6220_thermal_alarm_clear (int ,int ) ;
 int hi6220_thermal_alarm_enable (int ,int) ;
 int hi6220_thermal_alarm_set (int ,int ) ;
 int hi6220_thermal_enable (int ,int) ;
 int hi6220_thermal_hdak_set (int ,int ) ;
 int hi6220_thermal_reset_enable (int ,int) ;
 int hi6220_thermal_reset_set (int ,int ) ;
 int hi6220_thermal_sensor_select (int ,int ) ;
 int hi6220_thermal_set_lag (int ,int ) ;

__attribute__((used)) static int hi6220_thermal_enable_sensor(struct hisi_thermal_sensor *sensor)
{
 struct hisi_thermal_data *data = sensor->data;
 int ret;


 ret = clk_prepare_enable(data->clk);
 if (ret)
  return ret;


 hi6220_thermal_reset_enable(data->regs, 0);
 hi6220_thermal_enable(data->regs, 0);


 hi6220_thermal_sensor_select(data->regs, sensor->id);


 hi6220_thermal_hdak_set(data->regs, 0);


 hi6220_thermal_set_lag(data->regs, HI6220_TEMP_LAG);


 hi6220_thermal_alarm_set(data->regs, sensor->thres_temp);

 hi6220_thermal_reset_set(data->regs, HI6220_TEMP_RESET);


 hi6220_thermal_reset_enable(data->regs, 1);
 hi6220_thermal_enable(data->regs, 1);

 hi6220_thermal_alarm_clear(data->regs, 0);
 hi6220_thermal_alarm_enable(data->regs, 1);

 return 0;
}
