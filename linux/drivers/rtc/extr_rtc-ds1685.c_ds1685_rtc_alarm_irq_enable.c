
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds1685_priv {int (* read ) (struct ds1685_priv*,int ) ;int (* write ) (struct ds1685_priv*,int ,int) ;} ;
struct device {int dummy; } ;


 int RTC_CTRL_B ;
 int RTC_CTRL_B_AIE ;
 int RTC_CTRL_C ;
 struct ds1685_priv* dev_get_drvdata (struct device*) ;
 int stub1 (struct ds1685_priv*,int ,int) ;
 int stub2 (struct ds1685_priv*,int ) ;
 int stub3 (struct ds1685_priv*,int ,int) ;
 int stub4 (struct ds1685_priv*,int ) ;
 int stub5 (struct ds1685_priv*,int ) ;

__attribute__((used)) static int
ds1685_rtc_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 struct ds1685_priv *rtc = dev_get_drvdata(dev);


 if (enabled)
  rtc->write(rtc, RTC_CTRL_B, (rtc->read(rtc, RTC_CTRL_B) |
          RTC_CTRL_B_AIE));
 else
  rtc->write(rtc, RTC_CTRL_B, (rtc->read(rtc, RTC_CTRL_B) &
          ~(RTC_CTRL_B_AIE)));


 rtc->read(rtc, RTC_CTRL_C);

 return 0;
}
