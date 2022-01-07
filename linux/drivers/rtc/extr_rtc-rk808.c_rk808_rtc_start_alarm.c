
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rk808_rtc {TYPE_1__* creg; struct rk808* rk808; } ;
struct rk808 {int regmap; } ;
struct TYPE_2__ {int int_reg; } ;


 int BIT_RTC_INTERRUPTS_REG_IT_ALARM_M ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int rk808_rtc_start_alarm(struct rk808_rtc *rk808_rtc)
{
 struct rk808 *rk808 = rk808_rtc->rk808;
 int ret;

 ret = regmap_update_bits(rk808->regmap, rk808_rtc->creg->int_reg,
     BIT_RTC_INTERRUPTS_REG_IT_ALARM_M,
     BIT_RTC_INTERRUPTS_REG_IT_ALARM_M);

 return ret;
}
