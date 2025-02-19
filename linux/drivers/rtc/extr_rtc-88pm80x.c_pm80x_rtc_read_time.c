
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct pm80x_rtc_info {int dev; int map; } ;
struct device {int dummy; } ;


 int PM800_RTC_COUNTER1 ;
 int PM800_RTC_EXPIRE2_1 ;
 int dev_dbg (int ,char*,unsigned long,unsigned long,unsigned long,...) ;
 struct pm80x_rtc_info* dev_get_drvdata (struct device*) ;
 int regmap_raw_read (int ,int ,unsigned char*,int) ;
 int rtc_time64_to_tm (unsigned long,struct rtc_time*) ;

__attribute__((used)) static int pm80x_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 struct pm80x_rtc_info *info = dev_get_drvdata(dev);
 unsigned char buf[4];
 unsigned long ticks, base, data;
 regmap_raw_read(info->map, PM800_RTC_EXPIRE2_1, buf, 4);
 base = ((unsigned long)buf[3] << 24) | (buf[2] << 16) |
  (buf[1] << 8) | buf[0];
 dev_dbg(info->dev, "%x-%x-%x-%x\n", buf[0], buf[1], buf[2], buf[3]);


 regmap_raw_read(info->map, PM800_RTC_COUNTER1, buf, 4);
 data = ((unsigned long)buf[3] << 24) | (buf[2] << 16) |
  (buf[1] << 8) | buf[0];
 ticks = base + data;
 dev_dbg(info->dev, "get base:0x%lx, RO count:0x%lx, ticks:0x%lx\n",
  base, data, ticks);
 rtc_time64_to_tm(ticks, tm);
 return 0;
}
