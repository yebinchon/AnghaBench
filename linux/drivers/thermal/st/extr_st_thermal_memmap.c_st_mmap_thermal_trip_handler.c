
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_thermal_sensor {int thermal_dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int THERMAL_EVENT_UNSPECIFIED ;
 int thermal_zone_device_update (int ,int ) ;

__attribute__((used)) static irqreturn_t st_mmap_thermal_trip_handler(int irq, void *sdata)
{
 struct st_thermal_sensor *sensor = sdata;

 thermal_zone_device_update(sensor->thermal_dev,
       THERMAL_EVENT_UNSPECIFIED);

 return IRQ_HANDLED;
}
