
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct hisi_thermal_sensor {int dummy; } ;
struct hisi_thermal_data {int nr_sensors; TYPE_1__* ops; struct hisi_thermal_sensor* sensor; } ;
struct TYPE_2__ {int (* disable_sensor ) (struct hisi_thermal_sensor*) ;} ;


 int hisi_thermal_toggle_sensor (struct hisi_thermal_sensor*,int) ;
 struct hisi_thermal_data* platform_get_drvdata (struct platform_device*) ;
 int stub1 (struct hisi_thermal_sensor*) ;

__attribute__((used)) static int hisi_thermal_remove(struct platform_device *pdev)
{
 struct hisi_thermal_data *data = platform_get_drvdata(pdev);
 int i;

 for (i = 0; i < data->nr_sensors; i++) {
  struct hisi_thermal_sensor *sensor = &data->sensor[i];

  hisi_thermal_toggle_sensor(sensor, 0);
  data->ops->disable_sensor(sensor);
 }

 return 0;
}
