
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct pinctrl_dev {int dummy; } ;
struct omap_rtc {int dummy; } ;


 int EINVAL ;
 int ENOTSUPP ;
 int OMAP_RTC_PMIC_EXT_WKUP_EN (unsigned int) ;
 int OMAP_RTC_PMIC_EXT_WKUP_POL (unsigned int) ;
 int OMAP_RTC_PMIC_REG ;


 unsigned long pinconf_to_config_packed (unsigned int,int ) ;
 unsigned int pinconf_to_config_param (unsigned long) ;
 struct omap_rtc* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int rtc_readl (struct omap_rtc*,int ) ;

__attribute__((used)) static int rtc_pinconf_get(struct pinctrl_dev *pctldev,
   unsigned int pin, unsigned long *config)
{
 struct omap_rtc *rtc = pinctrl_dev_get_drvdata(pctldev);
 unsigned int param = pinconf_to_config_param(*config);
 u32 val;
 u16 arg = 0;

 val = rtc_readl(rtc, OMAP_RTC_PMIC_REG);

 switch (param) {
 case 128:
  if (!(val & OMAP_RTC_PMIC_EXT_WKUP_EN(pin)))
   return -EINVAL;
  break;
 case 129:
  if (val & OMAP_RTC_PMIC_EXT_WKUP_POL(pin))
   return -EINVAL;
  break;
 default:
  return -ENOTSUPP;
 };

 *config = pinconf_to_config_packed(param, arg);

 return 0;
}
