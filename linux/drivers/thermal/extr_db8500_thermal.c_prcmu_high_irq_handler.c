
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct db8500_thermal_zone {unsigned int cur_index; int interpolated_temp; TYPE_1__* tz; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int device; } ;


 int ARRAY_SIZE (int*) ;
 int IRQ_HANDLED ;
 int THERMAL_EVENT_UNSPECIFIED ;
 int THERMAL_TREND_RAISING ;
 int* db8500_thermal_points ;
 int db8500_thermal_update_config (struct db8500_thermal_zone*,unsigned int,int ,unsigned long,unsigned long) ;
 int dev_info (int *,char*,unsigned long,unsigned long) ;
 int thermal_zone_device_update (TYPE_1__*,int ) ;

__attribute__((used)) static irqreturn_t prcmu_high_irq_handler(int irq, void *irq_data)
{
 struct db8500_thermal_zone *th = irq_data;
 unsigned int idx = th->cur_index;
 unsigned long next_low, next_high;
 int num_points = ARRAY_SIZE(db8500_thermal_points);

 if (idx < num_points - 1) {
  next_high = db8500_thermal_points[idx+1];
  next_low = db8500_thermal_points[idx];
  idx += 1;

  db8500_thermal_update_config(th, idx, THERMAL_TREND_RAISING,
          next_low, next_high);

  dev_info(&th->tz->device,
    "PRCMU set max %ld, min %ld\n", next_high, next_low);
 } else if (idx == num_points - 1)

  th->interpolated_temp = db8500_thermal_points[idx] + 1;

 thermal_zone_device_update(th->tz, THERMAL_EVENT_UNSPECIFIED);

 return IRQ_HANDLED;
}
