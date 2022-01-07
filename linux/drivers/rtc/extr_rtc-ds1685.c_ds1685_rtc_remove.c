
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ds1685_priv {int (* read ) (struct ds1685_priv*,int ) ;int (* write ) (struct ds1685_priv*,int ,int) ;} ;


 int RTC_CTRL_4A_RWK_MASK ;
 int RTC_CTRL_4B_RWK_MASK ;
 int RTC_CTRL_B ;
 int RTC_CTRL_B_PAU_MASK ;
 int RTC_CTRL_C ;
 int RTC_EXT_CTRL_4A ;
 int RTC_EXT_CTRL_4B ;
 struct ds1685_priv* platform_get_drvdata (struct platform_device*) ;
 int stub1 (struct ds1685_priv*,int ,int) ;
 int stub2 (struct ds1685_priv*,int ) ;
 int stub3 (struct ds1685_priv*,int ) ;
 int stub4 (struct ds1685_priv*,int ,int) ;
 int stub5 (struct ds1685_priv*,int ) ;
 int stub6 (struct ds1685_priv*,int ,int) ;
 int stub7 (struct ds1685_priv*,int ) ;

__attribute__((used)) static int
ds1685_rtc_remove(struct platform_device *pdev)
{
 struct ds1685_priv *rtc = platform_get_drvdata(pdev);


 rtc->write(rtc, RTC_CTRL_B,
     (rtc->read(rtc, RTC_CTRL_B) &
      ~(RTC_CTRL_B_PAU_MASK)));


 rtc->read(rtc, RTC_CTRL_C);


 rtc->write(rtc, RTC_EXT_CTRL_4B,
     (rtc->read(rtc, RTC_EXT_CTRL_4B) &
      ~(RTC_CTRL_4B_RWK_MASK)));


 rtc->write(rtc, RTC_EXT_CTRL_4A,
     (rtc->read(rtc, RTC_EXT_CTRL_4A) &
      ~(RTC_CTRL_4A_RWK_MASK)));

 return 0;
}
