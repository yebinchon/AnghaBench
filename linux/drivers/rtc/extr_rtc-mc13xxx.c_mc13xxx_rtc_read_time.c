
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int time64_t ;
struct rtc_time {int dummy; } ;
struct mc13xxx_rtc {int mc13xxx; int valid; } ;
struct device {int dummy; } ;


 int ENODATA ;
 int MC13XXX_RTCDAY ;
 int MC13XXX_RTCTOD ;
 unsigned int SEC_PER_DAY ;
 struct mc13xxx_rtc* dev_get_drvdata (struct device*) ;
 int mc13xxx_reg_read (int ,int ,unsigned int*) ;
 int rtc_time64_to_tm (unsigned int,struct rtc_time*) ;

__attribute__((used)) static int mc13xxx_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 struct mc13xxx_rtc *priv = dev_get_drvdata(dev);
 unsigned int seconds, days1, days2;

 if (!priv->valid)
  return -ENODATA;

 do {
  int ret;

  ret = mc13xxx_reg_read(priv->mc13xxx, MC13XXX_RTCDAY, &days1);
  if (ret)
   return ret;

  ret = mc13xxx_reg_read(priv->mc13xxx, MC13XXX_RTCTOD, &seconds);
  if (ret)
   return ret;

  ret = mc13xxx_reg_read(priv->mc13xxx, MC13XXX_RTCDAY, &days2);
  if (ret)
   return ret;
 } while (days1 != days2);

 rtc_time64_to_tm((time64_t)days1 * SEC_PER_DAY + seconds, tm);

 return 0;
}
