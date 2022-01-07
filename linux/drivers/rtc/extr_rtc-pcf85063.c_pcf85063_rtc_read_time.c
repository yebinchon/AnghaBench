
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtc_time {int tm_wday; void* tm_year; void* tm_mon; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct pcf85063 {TYPE_1__* rtc; int regmap; } ;
struct device {int dummy; } ;
typedef int regs ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int PCF85063_REG_SC ;
 int PCF85063_REG_SC_OS ;
 void* bcd2bin (int) ;
 struct pcf85063* dev_get_drvdata (struct device*) ;
 int dev_warn (int *,char*) ;
 int regmap_bulk_read (int ,int ,int*,int) ;

__attribute__((used)) static int pcf85063_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 struct pcf85063 *pcf85063 = dev_get_drvdata(dev);
 int rc;
 u8 regs[7];







 rc = regmap_bulk_read(pcf85063->regmap, PCF85063_REG_SC, regs,
         sizeof(regs));
 if (rc)
  return rc;


 if (regs[0] & PCF85063_REG_SC_OS) {
  dev_warn(&pcf85063->rtc->dev, "Power loss detected, invalid time\n");
  return -EINVAL;
 }

 tm->tm_sec = bcd2bin(regs[0] & 0x7F);
 tm->tm_min = bcd2bin(regs[1] & 0x7F);
 tm->tm_hour = bcd2bin(regs[2] & 0x3F);
 tm->tm_mday = bcd2bin(regs[3] & 0x3F);
 tm->tm_wday = regs[4] & 0x07;
 tm->tm_mon = bcd2bin(regs[5] & 0x1F) - 1;
 tm->tm_year = bcd2bin(regs[6]);
 tm->tm_year += 100;

 return 0;
}
