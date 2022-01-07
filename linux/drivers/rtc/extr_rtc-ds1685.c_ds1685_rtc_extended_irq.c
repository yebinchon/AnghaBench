
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct platform_device {int dev; } ;
struct ds1685_priv {int (* read ) (struct ds1685_priv*,int ) ;int (* post_ram_clear ) () ;int (* write ) (struct ds1685_priv*,int ,int) ;int (* wake_alarm ) () ;int (* prepare_poweroff ) () ;} ;


 int RTC_CTRL_4A_KF ;
 int RTC_CTRL_4A_RF ;
 int RTC_CTRL_4A_WF ;
 int RTC_CTRL_4B_KSE ;
 int RTC_CTRL_4B_RIE ;
 int RTC_CTRL_4B_WIE ;
 int RTC_EXT_CTRL_4A ;
 int RTC_EXT_CTRL_4B ;
 int dev_warn (int *,char*) ;
 int ds1685_rtc_poweroff (struct platform_device*) ;
 int ds1685_rtc_switch_to_bank0 (struct ds1685_priv*) ;
 int ds1685_rtc_switch_to_bank1 (struct ds1685_priv*) ;
 int msleep (int) ;
 int stub1 (struct ds1685_priv*,int ) ;
 int stub10 () ;
 int stub11 (struct ds1685_priv*,int ,int) ;
 int stub12 () ;
 int stub2 (struct ds1685_priv*,int ) ;
 int stub3 (struct ds1685_priv*,int ,int) ;
 int stub4 (struct ds1685_priv*,int ) ;
 int stub5 (struct ds1685_priv*,int ,int) ;
 int stub6 (struct ds1685_priv*,int ,int) ;
 int stub7 (struct ds1685_priv*,int ) ;
 int stub8 () ;
 int stub9 (struct ds1685_priv*,int ,int) ;

__attribute__((used)) static void
ds1685_rtc_extended_irq(struct ds1685_priv *rtc, struct platform_device *pdev)
{
 u8 ctrl4a, ctrl4b;

 ds1685_rtc_switch_to_bank1(rtc);
 ctrl4a = rtc->read(rtc, RTC_EXT_CTRL_4A);
 ctrl4b = rtc->read(rtc, RTC_EXT_CTRL_4B);






 if ((ctrl4b & RTC_CTRL_4B_KSE) && (ctrl4a & RTC_CTRL_4A_KF)) {

  rtc->write(rtc, RTC_EXT_CTRL_4B,
      (rtc->read(rtc, RTC_EXT_CTRL_4B) &
       ~(RTC_CTRL_4B_KSE)));


  rtc->write(rtc, RTC_EXT_CTRL_4A,
      (ctrl4a & ~(RTC_CTRL_4A_KF)));







  msleep(500);
  rtc->write(rtc, RTC_EXT_CTRL_4B,
      (rtc->read(rtc, RTC_EXT_CTRL_4B) |
       RTC_CTRL_4B_KSE));


  if (rtc->prepare_poweroff != ((void*)0))
   rtc->prepare_poweroff();
  else
   ds1685_rtc_poweroff(pdev);
 }







 if ((ctrl4b & RTC_CTRL_4B_WIE) && (ctrl4a & RTC_CTRL_4A_WF)) {
  rtc->write(rtc, RTC_EXT_CTRL_4A,
      (ctrl4a & ~(RTC_CTRL_4A_WF)));


  if (rtc->wake_alarm != ((void*)0))
   rtc->wake_alarm();
  else
   dev_warn(&pdev->dev,
     "Wake Alarm IRQ just occurred!\n");
 }
 if ((ctrl4b & RTC_CTRL_4B_RIE) && (ctrl4a & RTC_CTRL_4A_RF)) {
  rtc->write(rtc, RTC_EXT_CTRL_4A,
      (ctrl4a & ~(RTC_CTRL_4A_RF)));
  msleep(150);


  if (rtc->post_ram_clear != ((void*)0))
   rtc->post_ram_clear();
  else
   dev_warn(&pdev->dev,
     "RAM-Clear IRQ just occurred!\n");
 }
 ds1685_rtc_switch_to_bank0(rtc);
}
