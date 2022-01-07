
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_thermal_sensor {int id; struct hisi_thermal_data* data; } ;
struct hisi_thermal_data {int regs; } ;


 int hi3660_thermal_get_temperature (int ,int ) ;

__attribute__((used)) static int hi3660_thermal_get_temp(struct hisi_thermal_sensor *sensor)
{
 struct hisi_thermal_data *data = sensor->data;

 return hi3660_thermal_get_temperature(data->regs, sensor->id);
}
