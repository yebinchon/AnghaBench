
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm_thermal_sensor {int th_dev; scalar_t__ base; } ;
typedef int irqreturn_t ;


 scalar_t__ DTS_CIFR_OFFSET ;
 scalar_t__ DTS_SR_OFFSET ;
 int HIGH_THRESHOLD ;
 int IRQ_HANDLED ;
 int LOW_THRESHOLD ;
 int THERMAL_EVENT_UNSPECIFIED ;
 int readl_relaxed (scalar_t__) ;
 int thermal_zone_device_update (int ,int ) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t stm_thermal_alarm_irq_thread(int irq, void *sdata)
{
 u32 value;
 struct stm_thermal_sensor *sensor = sdata;


 value = readl_relaxed(sensor->base + DTS_SR_OFFSET);

 if ((value & LOW_THRESHOLD) == LOW_THRESHOLD)
  writel_relaxed(LOW_THRESHOLD, sensor->base + DTS_CIFR_OFFSET);

 if ((value & HIGH_THRESHOLD) == HIGH_THRESHOLD)
  writel_relaxed(HIGH_THRESHOLD, sensor->base + DTS_CIFR_OFFSET);

 thermal_zone_device_update(sensor->th_dev, THERMAL_EVENT_UNSPECIFIED);

 return IRQ_HANDLED;
}
