
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct max8998_rtc_info {scalar_t__ lp3974_bug_workaround; int rtc; } ;


 int MAX8998_ALARM0_CONF ;
 int max8998_write_reg (int ,int ,int) ;
 int msleep (int) ;

__attribute__((used)) static int max8998_rtc_start_alarm(struct max8998_rtc_info *info)
{
 int ret;
 u8 alarm0_conf = 0x77;


 if (info->lp3974_bug_workaround)
  alarm0_conf = 0x57;

 ret = max8998_write_reg(info->rtc, MAX8998_ALARM0_CONF, alarm0_conf);

 if (info->lp3974_bug_workaround)
  msleep(2000);

 return ret;
}
