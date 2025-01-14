
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tm_mon; scalar_t__ tm_mday; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;
struct rtc_wkalrm {int enabled; TYPE_1__ time; } ;
struct pcf85363 {int regmap; } ;
struct device {int dummy; } ;
typedef int buf ;


 scalar_t__ DT_MONTH_ALM1 ;
 scalar_t__ DT_SECOND_ALM1 ;
 int _pcf85363_rtc_alarm_irq_enable (struct pcf85363*,int ) ;
 unsigned char bin2bcd (scalar_t__) ;
 struct pcf85363* dev_get_drvdata (struct device*) ;
 int regmap_bulk_write (int ,scalar_t__,unsigned char*,int) ;

__attribute__((used)) static int pcf85363_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct pcf85363 *pcf85363 = dev_get_drvdata(dev);
 unsigned char buf[DT_MONTH_ALM1 - DT_SECOND_ALM1 + 1];
 int ret;

 buf[0] = bin2bcd(alrm->time.tm_sec);
 buf[1] = bin2bcd(alrm->time.tm_min);
 buf[2] = bin2bcd(alrm->time.tm_hour);
 buf[3] = bin2bcd(alrm->time.tm_mday);
 buf[4] = bin2bcd(alrm->time.tm_mon + 1);





 ret = _pcf85363_rtc_alarm_irq_enable(pcf85363, 0);
 if (ret)
  return ret;

 ret = regmap_bulk_write(pcf85363->regmap, DT_SECOND_ALM1, buf,
    sizeof(buf));
 if (ret)
  return ret;

 return _pcf85363_rtc_alarm_irq_enable(pcf85363, alrm->enabled);
}
