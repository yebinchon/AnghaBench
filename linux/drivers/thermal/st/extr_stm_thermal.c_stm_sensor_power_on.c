
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm_thermal_sensor {scalar_t__ base; } ;


 scalar_t__ DTS_CFGR1_OFFSET ;
 scalar_t__ DTS_SR_OFFSET ;
 int POLL_TIMEOUT ;
 int STARTUP_TIME ;
 int TS1_EN ;
 int TS1_START ;
 int TS_RDY ;
 int readl_poll_timeout (scalar_t__,int,int,int ,int ) ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int stm_sensor_power_on(struct stm_thermal_sensor *sensor)
{
 int ret;
 u32 value;


 value = readl_relaxed(sensor->base + DTS_CFGR1_OFFSET);
 value |= TS1_EN;
 writel_relaxed(value, sensor->base + DTS_CFGR1_OFFSET);






 ret = readl_poll_timeout(sensor->base + DTS_SR_OFFSET,
     value, (value & TS_RDY),
     STARTUP_TIME, POLL_TIMEOUT);
 if (ret)
  return ret;


 value = readl_relaxed(sensor->base +
         DTS_CFGR1_OFFSET);
 value |= TS1_START;
 writel_relaxed(value, sensor->base +
         DTS_CFGR1_OFFSET);

 return 0;
}
