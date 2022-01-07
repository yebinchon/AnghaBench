
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_thermal_sensor {struct hisi_thermal_data* data; } ;
struct hisi_thermal_data {int clk; int regs; } ;


 int clk_disable_unprepare (int ) ;
 int hi6220_thermal_alarm_enable (int ,int ) ;
 int hi6220_thermal_enable (int ,int ) ;
 int hi6220_thermal_reset_enable (int ,int ) ;

__attribute__((used)) static int hi6220_thermal_disable_sensor(struct hisi_thermal_sensor *sensor)
{
 struct hisi_thermal_data *data = sensor->data;


 hi6220_thermal_enable(data->regs, 0);
 hi6220_thermal_alarm_enable(data->regs, 0);
 hi6220_thermal_reset_enable(data->regs, 0);

 clk_disable_unprepare(data->clk);

 return 0;
}
