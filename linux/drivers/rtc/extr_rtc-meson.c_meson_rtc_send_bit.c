
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_rtc {int peripheral; } ;


 int RTC_ADDR0 ;
 int RTC_ADDR0_LINE_SDI ;
 int meson_rtc_sclk_pulse (struct meson_rtc*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void meson_rtc_send_bit(struct meson_rtc *rtc, unsigned int bit)
{
 regmap_update_bits(rtc->peripheral, RTC_ADDR0, RTC_ADDR0_LINE_SDI,
      bit ? RTC_ADDR0_LINE_SDI : 0);
 meson_rtc_sclk_pulse(rtc);
}
