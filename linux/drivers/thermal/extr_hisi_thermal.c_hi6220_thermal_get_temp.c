
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_thermal_sensor {struct hisi_thermal_data* data; } ;
struct hisi_thermal_data {int regs; } ;


 int hi6220_thermal_get_temperature (int ) ;

__attribute__((used)) static int hi6220_thermal_get_temp(struct hisi_thermal_sensor *sensor)
{
 struct hisi_thermal_data *data = sensor->data;

 return hi6220_thermal_get_temperature(data->regs);
}
