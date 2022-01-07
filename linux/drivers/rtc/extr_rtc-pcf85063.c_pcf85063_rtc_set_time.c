
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc_time {int tm_wday; scalar_t__ tm_year; scalar_t__ tm_mon; scalar_t__ tm_mday; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;
struct pcf85063 {int regmap; } ;
struct device {int dummy; } ;
typedef int regs ;


 int PCF85063_REG_CTRL1 ;
 int PCF85063_REG_CTRL1_STOP ;
 int PCF85063_REG_SC ;
 int bin2bcd (scalar_t__) ;
 struct pcf85063* dev_get_drvdata (struct device*) ;
 int regmap_bulk_write (int ,int ,int*,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int pcf85063_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 struct pcf85063 *pcf85063 = dev_get_drvdata(dev);
 int rc;
 u8 regs[7];





 rc = regmap_update_bits(pcf85063->regmap, PCF85063_REG_CTRL1,
    PCF85063_REG_CTRL1_STOP,
    PCF85063_REG_CTRL1_STOP);
 if (rc)
  return rc;


 regs[0] = bin2bcd(tm->tm_sec) & 0x7F;

 regs[1] = bin2bcd(tm->tm_min);
 regs[2] = bin2bcd(tm->tm_hour);


 regs[3] = bin2bcd(tm->tm_mday);


 regs[4] = tm->tm_wday & 0x07;


 regs[5] = bin2bcd(tm->tm_mon + 1);


 regs[6] = bin2bcd(tm->tm_year - 100);


 rc = regmap_bulk_write(pcf85063->regmap, PCF85063_REG_SC,
          regs, sizeof(regs));
 if (rc)
  return rc;






 return regmap_update_bits(pcf85063->regmap, PCF85063_REG_CTRL1,
      PCF85063_REG_CTRL1_STOP, 0);
}
