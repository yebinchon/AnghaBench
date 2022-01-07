
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imx_thermal_data {int alarm_temp; TYPE_1__* tz; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int device; } ;


 int IRQ_HANDLED ;
 int THERMAL_EVENT_UNSPECIFIED ;
 int dev_dbg (int *,char*,int) ;
 int thermal_zone_device_update (TYPE_1__*,int ) ;

__attribute__((used)) static irqreturn_t imx_thermal_alarm_irq_thread(int irq, void *dev)
{
 struct imx_thermal_data *data = dev;

 dev_dbg(&data->tz->device, "THERMAL ALARM: T > %d\n",
  data->alarm_temp / 1000);

 thermal_zone_device_update(data->tz, THERMAL_EVENT_UNSPECIFIED);

 return IRQ_HANDLED;
}
