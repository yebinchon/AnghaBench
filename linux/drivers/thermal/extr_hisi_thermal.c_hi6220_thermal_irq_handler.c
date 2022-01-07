
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_thermal_sensor {struct hisi_thermal_data* data; } ;
struct hisi_thermal_data {int regs; } ;


 int hi6220_thermal_alarm_clear (int ,int) ;

__attribute__((used)) static int hi6220_thermal_irq_handler(struct hisi_thermal_sensor *sensor)
{
 struct hisi_thermal_data *data = sensor->data;

 hi6220_thermal_alarm_clear(data->regs, 1);
 return 0;
}
