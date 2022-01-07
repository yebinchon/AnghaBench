
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct meson_rtc {int peripheral; } ;


 int RTC_ADDR0 ;
 int RTC_ADDR0_LINE_SDI ;
 int RTC_ADDR0_LINE_SEN ;
 int meson_rtc_send_bit (struct meson_rtc*,int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void meson_rtc_set_dir(struct meson_rtc *rtc, u32 mode)
{
 regmap_update_bits(rtc->peripheral, RTC_ADDR0, RTC_ADDR0_LINE_SEN, 0);
 regmap_update_bits(rtc->peripheral, RTC_ADDR0, RTC_ADDR0_LINE_SDI, 0);
 meson_rtc_send_bit(rtc, mode);
 regmap_update_bits(rtc->peripheral, RTC_ADDR0, RTC_ADDR0_LINE_SDI, 0);
}
