
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_thermal_sensor {int id; int thres_temp; struct hisi_thermal_data* data; } ;
struct hisi_thermal_data {int regs; } ;


 int HI3660_TEMP_LAG ;
 int hi3660_thermal_alarm_clear (int ,int ,int) ;
 int hi3660_thermal_alarm_enable (int ,int ,int) ;
 int hi3660_thermal_alarm_set (int ,int ,unsigned int) ;
 int hi3660_thermal_set_lag (int ,int ,int ) ;
 unsigned int hi3660_thermal_temp_to_step (int ) ;

__attribute__((used)) static int hi3660_thermal_enable_sensor(struct hisi_thermal_sensor *sensor)
{
 unsigned int value;
 struct hisi_thermal_data *data = sensor->data;


 hi3660_thermal_alarm_enable(data->regs, sensor->id, 0);


 hi3660_thermal_set_lag(data->regs, sensor->id, HI3660_TEMP_LAG);


 value = hi3660_thermal_temp_to_step(sensor->thres_temp);
 hi3660_thermal_alarm_set(data->regs, sensor->id, value);


 hi3660_thermal_alarm_clear(data->regs, sensor->id, 1);
 hi3660_thermal_alarm_enable(data->regs, sensor->id, 1);

 return 0;
}
