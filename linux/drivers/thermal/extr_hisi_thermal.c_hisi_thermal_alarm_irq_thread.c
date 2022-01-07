
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hisi_thermal_sensor {int thres_temp; int id; int tzd; struct hisi_thermal_data* data; } ;
struct hisi_thermal_data {TYPE_2__* pdev; TYPE_1__* ops; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int (* irq_handler ) (struct hisi_thermal_sensor*) ;} ;


 int IRQ_HANDLED ;
 int THERMAL_EVENT_UNSPECIFIED ;
 int dev_crit (int *,char*,int ,int,int) ;
 int hisi_thermal_get_temp (struct hisi_thermal_sensor*,int*) ;
 int stub1 (struct hisi_thermal_sensor*) ;
 int thermal_zone_device_update (int ,int ) ;

__attribute__((used)) static irqreturn_t hisi_thermal_alarm_irq_thread(int irq, void *dev)
{
 struct hisi_thermal_sensor *sensor = dev;
 struct hisi_thermal_data *data = sensor->data;
 int temp = 0;

 data->ops->irq_handler(sensor);

 hisi_thermal_get_temp(sensor, &temp);

 if (temp >= sensor->thres_temp) {
  dev_crit(&data->pdev->dev,
    "sensor <%d> THERMAL ALARM: %d > %d\n",
    sensor->id, temp, sensor->thres_temp);

  thermal_zone_device_update(sensor->tzd,
        THERMAL_EVENT_UNSPECIFIED);

 } else {
  dev_crit(&data->pdev->dev,
    "sensor <%d> THERMAL ALARM stopped: %d < %d\n",
    sensor->id, temp, sensor->thres_temp);
 }

 return IRQ_HANDLED;
}
