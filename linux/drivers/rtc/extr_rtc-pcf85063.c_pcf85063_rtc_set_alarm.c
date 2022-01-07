
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
struct rtc_wkalrm {scalar_t__ enabled; TYPE_1__ time; } ;
struct pcf85063 {int regmap; } ;
struct device {int dummy; } ;
typedef int buf ;


 int PCF85063_AEN ;
 int PCF85063_CTRL2_AF ;
 int PCF85063_CTRL2_AIE ;
 int PCF85063_REG_ALM_S ;
 int PCF85063_REG_CTRL2 ;
 int bin2bcd (int ) ;
 struct pcf85063* dev_get_drvdata (struct device*) ;
 int regmap_bulk_write (int ,int ,int *,int) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int pcf85063_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct pcf85063 *pcf85063 = dev_get_drvdata(dev);
 u8 buf[5];
 int ret;

 buf[0] = bin2bcd(alrm->time.tm_sec);
 buf[1] = bin2bcd(alrm->time.tm_min);
 buf[2] = bin2bcd(alrm->time.tm_hour);
 buf[3] = bin2bcd(alrm->time.tm_mday);
 buf[4] = PCF85063_AEN;

 ret = regmap_update_bits(pcf85063->regmap, PCF85063_REG_CTRL2,
     PCF85063_CTRL2_AIE | PCF85063_CTRL2_AF, 0);
 if (ret)
  return ret;

 ret = regmap_bulk_write(pcf85063->regmap, PCF85063_REG_ALM_S,
    buf, sizeof(buf));
 if (ret)
  return ret;

 return regmap_update_bits(pcf85063->regmap, PCF85063_REG_CTRL2,
      PCF85063_CTRL2_AIE | PCF85063_CTRL2_AF,
      alrm->enabled ? PCF85063_CTRL2_AIE | PCF85063_CTRL2_AF : PCF85063_CTRL2_AF);
}
