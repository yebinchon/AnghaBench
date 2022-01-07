
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm8xxx_rtc_regs {int ctrl; } ;
struct pm8xxx_rtc {int regmap; struct pm8xxx_rtc_regs* regs; } ;


 unsigned int PM8xxx_RTC_ENABLE ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static int pm8xxx_rtc_enable(struct pm8xxx_rtc *rtc_dd)
{
 const struct pm8xxx_rtc_regs *regs = rtc_dd->regs;
 unsigned int ctrl_reg;
 int rc;


 rc = regmap_read(rtc_dd->regmap, regs->ctrl, &ctrl_reg);
 if (rc)
  return rc;

 if (!(ctrl_reg & PM8xxx_RTC_ENABLE)) {
  ctrl_reg |= PM8xxx_RTC_ENABLE;
  rc = regmap_write(rtc_dd->regmap, regs->ctrl, ctrl_reg);
  if (rc)
   return rc;
 }

 return 0;
}
