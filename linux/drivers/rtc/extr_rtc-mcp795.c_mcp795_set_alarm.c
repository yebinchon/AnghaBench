
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int tmp ;
typedef scalar_t__ time64_t ;
struct rtc_time {int tm_year; int tm_isdst; int tm_yday; scalar_t__ tm_wday; scalar_t__ tm_mon; scalar_t__ tm_mday; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;
struct rtc_wkalrm {struct rtc_time time; scalar_t__ enabled; } ;
struct device {int dummy; } ;


 int EDOM ;
 int EINVAL ;
 int MCP795_ALM0C0_BIT ;
 int MCP795_ALM0C1_BIT ;
 int MCP795_ALM0C2_BIT ;
 int MCP795_REG_ALM0_SECONDS ;
 int SEC_PER_DAY ;
 int bin2bcd (scalar_t__) ;
 int dev_dbg (struct device*,char*,...) ;
 int is_leap_year (int) ;
 int mcp795_read_time (struct device*,struct rtc_time*) ;
 int mcp795_rtcc_read (struct device*,int ,int*,int) ;
 int mcp795_rtcc_write (struct device*,int ,int*,int) ;
 int mcp795_update_alarm (struct device*,int) ;
 scalar_t__ rtc_tm_to_time64 (struct rtc_time*) ;

__attribute__((used)) static int mcp795_set_alarm(struct device *dev, struct rtc_wkalrm *alm)
{
 struct rtc_time now_tm;
 time64_t now;
 time64_t later;
 u8 tmp[6];
 int ret;


 ret = mcp795_read_time(dev, &now_tm);
 if (ret)
  return ret;

 now = rtc_tm_to_time64(&now_tm);
 later = rtc_tm_to_time64(&alm->time);
 if (later <= now)
  return -EINVAL;

 if ((later - now) >=
  (SEC_PER_DAY * (365 + is_leap_year(alm->time.tm_year))))
  return -EDOM;

 ret = mcp795_update_alarm(dev, 0);
 if (ret)
  return ret;

 ret = mcp795_rtcc_read(dev, MCP795_REG_ALM0_SECONDS, tmp, sizeof(tmp));
 if (ret)
  return ret;

 alm->time.tm_year = -1;
 alm->time.tm_isdst = -1;
 alm->time.tm_yday = -1;

 tmp[0] = (tmp[0] & 0x80) | bin2bcd(alm->time.tm_sec);
 tmp[1] = (tmp[1] & 0x80) | bin2bcd(alm->time.tm_min);
 tmp[2] = (tmp[2] & 0xE0) | bin2bcd(alm->time.tm_hour);
 tmp[3] = (tmp[3] & 0x80) | bin2bcd(alm->time.tm_wday + 1);

 tmp[3] |= (MCP795_ALM0C2_BIT | MCP795_ALM0C1_BIT | MCP795_ALM0C0_BIT);
 tmp[4] = (tmp[4] & 0xC0) | bin2bcd(alm->time.tm_mday);
 tmp[5] = (tmp[5] & 0xE0) | bin2bcd(alm->time.tm_mon + 1);

 ret = mcp795_rtcc_write(dev, MCP795_REG_ALM0_SECONDS, tmp, sizeof(tmp));
 if (ret)
  return ret;


 if (alm->enabled) {
  ret = mcp795_update_alarm(dev, 1);
  if (ret)
   return ret;
  dev_dbg(dev, "Alarm IRQ armed\n");
 }
 dev_dbg(dev, "Set alarm: %ptRdr(%d) %ptRt\n",
  &alm->time, alm->time.tm_wday, &alm->time);
 return 0;
}
