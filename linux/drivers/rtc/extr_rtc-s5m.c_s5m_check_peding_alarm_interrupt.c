
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s5m_rtc_info {int device_type; TYPE_1__* s5m87xx; int regmap; } ;
struct rtc_wkalrm {int pending; } ;
struct TYPE_2__ {int regmap_pmic; } ;


 int EINVAL ;


 int S2MPS14_REG_ST2 ;

 unsigned int S2MPS_ALARM0_STATUS ;


 unsigned int S5M_ALARM0_STATUS ;
 int S5M_RTC_STATUS ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int s5m_check_peding_alarm_interrupt(struct s5m_rtc_info *info,
  struct rtc_wkalrm *alarm)
{
 int ret;
 unsigned int val;

 switch (info->device_type) {
 case 128:
 case 129:
  ret = regmap_read(info->regmap, S5M_RTC_STATUS, &val);
  val &= S5M_ALARM0_STATUS;
  break;
 case 130:
 case 131:
 case 132:
  ret = regmap_read(info->s5m87xx->regmap_pmic, S2MPS14_REG_ST2,
    &val);
  val &= S2MPS_ALARM0_STATUS;
  break;
 default:
  return -EINVAL;
 }
 if (ret < 0)
  return ret;

 if (val)
  alarm->pending = 1;
 else
  alarm->pending = 0;

 return 0;
}
