
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct pm860x_rtc_info {int dev; int i2c; } ;
struct device {int dummy; } ;


 int PM8607_RTC_COUNTER1 ;
 int REG0_ADDR ;
 int dev_dbg (int ,char*,unsigned long,unsigned long,unsigned long,...) ;
 struct pm860x_rtc_info* dev_get_drvdata (struct device*) ;
 int pm860x_bulk_read (int ,int ,int,unsigned char*) ;
 int pm860x_page_bulk_read (int ,int ,int,unsigned char*) ;
 int rtc_time_to_tm (unsigned long,struct rtc_time*) ;

__attribute__((used)) static int pm860x_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 struct pm860x_rtc_info *info = dev_get_drvdata(dev);
 unsigned char buf[8];
 unsigned long ticks, base, data;

 pm860x_page_bulk_read(info->i2c, REG0_ADDR, 8, buf);
 dev_dbg(info->dev, "%x-%x-%x-%x-%x-%x-%x-%x\n", buf[0], buf[1],
  buf[2], buf[3], buf[4], buf[5], buf[6], buf[7]);
 base = ((unsigned long)buf[1] << 24) | (buf[3] << 16) |
  (buf[5] << 8) | buf[7];


 pm860x_bulk_read(info->i2c, PM8607_RTC_COUNTER1, 4, buf);
 data = ((unsigned long)buf[3] << 24) | (buf[2] << 16) |
  (buf[1] << 8) | buf[0];
 ticks = base + data;
 dev_dbg(info->dev, "get base:0x%lx, RO count:0x%lx, ticks:0x%lx\n",
  base, data, ticks);

 rtc_time_to_tm(ticks, tm);

 return 0;
}
