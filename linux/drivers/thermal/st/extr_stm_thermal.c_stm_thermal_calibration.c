
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm_thermal_sensor {scalar_t__ base; int clk; } ;


 int CALIBRATION_CONTROL ;
 scalar_t__ DTS_CFGR1_OFFSET ;
 int EINVAL ;
 int HSREF_CLK_DIV_MASK ;
 int HSREF_CLK_DIV_POS ;
 int NO_HW_TRIG ;
 int ONE_MHZ ;
 int REFCLK_SEL ;
 int TS1_INTRIG_SEL_MASK ;
 int TS1_SMP_TIME_MASK ;
 int clk_get_rate (int ) ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int stm_thermal_calibration(struct stm_thermal_sensor *sensor)
{
 u32 value, clk_freq;
 u32 prescaler;


 clk_freq = clk_get_rate(sensor->clk);
 if (!clk_freq)
  return -EINVAL;

 prescaler = 0;
 clk_freq /= ONE_MHZ;
 if (clk_freq) {
  while (prescaler <= clk_freq)
   prescaler++;
 }

 value = readl_relaxed(sensor->base + DTS_CFGR1_OFFSET);


 value &= ~HSREF_CLK_DIV_MASK;


 value |= (prescaler << HSREF_CLK_DIV_POS);


 value &= ~REFCLK_SEL;


 value |= TS1_SMP_TIME_MASK;


 value &= ~CALIBRATION_CONTROL;


 value &= ~TS1_INTRIG_SEL_MASK;
 value |= NO_HW_TRIG;

 writel_relaxed(value, sensor->base + DTS_CFGR1_OFFSET);

 return 0;
}
