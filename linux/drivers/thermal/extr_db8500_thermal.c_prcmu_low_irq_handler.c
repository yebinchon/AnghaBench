
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct db8500_thermal_zone {unsigned int cur_index; TYPE_1__* tz; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int device; } ;


 int IRQ_HANDLED ;
 unsigned long PRCMU_DEFAULT_LOW_TEMP ;
 int THERMAL_EVENT_UNSPECIFIED ;
 int THERMAL_TREND_DROPPING ;
 unsigned long* db8500_thermal_points ;
 int db8500_thermal_update_config (struct db8500_thermal_zone*,unsigned int,int ,unsigned long,unsigned long) ;
 int dev_dbg (int *,char*,unsigned long,unsigned long) ;
 int thermal_zone_device_update (TYPE_1__*,int ) ;

__attribute__((used)) static irqreturn_t prcmu_low_irq_handler(int irq, void *irq_data)
{
 struct db8500_thermal_zone *th = irq_data;
 unsigned int idx = th->cur_index;
 unsigned long next_low, next_high;

 if (idx == 0)

  return IRQ_HANDLED;

 if (idx == 1) {
  next_high = db8500_thermal_points[0];
  next_low = PRCMU_DEFAULT_LOW_TEMP;
 } else {
  next_high = db8500_thermal_points[idx - 1];
  next_low = db8500_thermal_points[idx - 2];
 }
 idx -= 1;

 db8500_thermal_update_config(th, idx, THERMAL_TREND_DROPPING,
         next_low, next_high);
 dev_dbg(&th->tz->device,
  "PRCMU set max %ld, min %ld\n", next_high, next_low);

 thermal_zone_device_update(th->tz, THERMAL_EVENT_UNSPECIFIED);

 return IRQ_HANDLED;
}
