
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wellness_str ;
typedef int u32 ;
typedef scalar_t__ time64_t ;
struct tm {int tm_mon; int tm_year; int tm_hour; int tm_min; int tm_sec; int tm_mday; } ;
struct timespec64 {scalar_t__ tv_sec; } ;
struct aac_dev {int sa_firmware; } ;
struct TYPE_2__ {int tz_minuteswest; } ;


 int ENODEV ;
 int aac_send_wellness_command (struct aac_dev*,char*,int) ;
 char bin2bcd (int) ;
 TYPE_1__ sys_tz ;
 int time64_to_tm (scalar_t__,int ,struct tm*) ;

int aac_send_safw_hostttime(struct aac_dev *dev, struct timespec64 *now)
{
 struct tm cur_tm;
 char wellness_str[] = "<HW>TD\010\0\0\0\0\0\0\0\0\0DW\0\0ZZ";
 u32 datasize = sizeof(wellness_str);
 time64_t local_time;
 int ret = -ENODEV;

 if (!dev->sa_firmware)
  goto out;

 local_time = (now->tv_sec - (sys_tz.tz_minuteswest * 60));
 time64_to_tm(local_time, 0, &cur_tm);
 cur_tm.tm_mon += 1;
 cur_tm.tm_year += 1900;
 wellness_str[8] = bin2bcd(cur_tm.tm_hour);
 wellness_str[9] = bin2bcd(cur_tm.tm_min);
 wellness_str[10] = bin2bcd(cur_tm.tm_sec);
 wellness_str[12] = bin2bcd(cur_tm.tm_mon);
 wellness_str[13] = bin2bcd(cur_tm.tm_mday);
 wellness_str[14] = bin2bcd(cur_tm.tm_year / 100);
 wellness_str[15] = bin2bcd(cur_tm.tm_year % 100);

 ret = aac_send_wellness_command(dev, wellness_str, datasize);

out:
 return ret;
}
