
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jz4740_rtc {int dummy; } ;
struct device {int dummy; } ;


 int JZ_REG_RTC_HIBERNATE ;
 struct jz4740_rtc* dev_get_drvdata (struct device*) ;
 int jz4740_rtc_reg_write (struct jz4740_rtc*,int ,int) ;

__attribute__((used)) static void jz4740_rtc_poweroff(struct device *dev)
{
 struct jz4740_rtc *rtc = dev_get_drvdata(dev);
 jz4740_rtc_reg_write(rtc, JZ_REG_RTC_HIBERNATE, 1);
}
