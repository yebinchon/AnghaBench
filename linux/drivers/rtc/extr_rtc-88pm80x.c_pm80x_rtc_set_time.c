
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct pm80x_rtc_info {int map; int dev; } ;
struct device {int dummy; } ;


 int PM800_RTC_COUNTER1 ;
 int PM800_RTC_EXPIRE2_1 ;
 int dev_dbg (int ,char*,unsigned long,unsigned long,unsigned long) ;
 struct pm80x_rtc_info* dev_get_drvdata (struct device*) ;
 int regmap_raw_read (int ,int ,unsigned char*,int) ;
 int regmap_raw_write (int ,int ,unsigned char*,int) ;
 unsigned long rtc_tm_to_time64 (struct rtc_time*) ;

__attribute__((used)) static int pm80x_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 struct pm80x_rtc_info *info = dev_get_drvdata(dev);
 unsigned char buf[4];
 unsigned long ticks, base, data;

 ticks = rtc_tm_to_time64(tm);


 regmap_raw_read(info->map, PM800_RTC_COUNTER1, buf, 4);
 data = ((unsigned long)buf[3] << 24) | (buf[2] << 16) |
  (buf[1] << 8) | buf[0];
 base = ticks - data;
 dev_dbg(info->dev, "set base:0x%lx, RO count:0x%lx, ticks:0x%lx\n",
  base, data, ticks);
 buf[0] = base & 0xFF;
 buf[1] = (base >> 8) & 0xFF;
 buf[2] = (base >> 16) & 0xFF;
 buf[3] = (base >> 24) & 0xFF;
 regmap_raw_write(info->map, PM800_RTC_EXPIRE2_1, buf, 4);

 return 0;
}
