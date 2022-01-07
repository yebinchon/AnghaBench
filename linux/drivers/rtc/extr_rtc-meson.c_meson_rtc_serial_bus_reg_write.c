
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_rtc {int peripheral; } ;


 int RTC_ADDR0 ;
 int RTC_ADDR0_LINE_SEN ;
 int RTC_ADDR_BITS ;
 int RTC_DATA_BITS ;
 int meson_rtc_get_bus (struct meson_rtc*) ;
 int meson_rtc_send_bits (struct meson_rtc*,unsigned int,int ) ;
 int meson_rtc_set_dir (struct meson_rtc*,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int meson_rtc_serial_bus_reg_write(void *context, unsigned int reg,
       unsigned int data)
{
 struct meson_rtc *rtc = context;
 int ret;

 ret = meson_rtc_get_bus(rtc);
 if (ret)
  return ret;

 regmap_update_bits(rtc->peripheral, RTC_ADDR0, RTC_ADDR0_LINE_SEN,
      RTC_ADDR0_LINE_SEN);
 meson_rtc_send_bits(rtc, data, RTC_DATA_BITS);
 meson_rtc_send_bits(rtc, reg, RTC_ADDR_BITS);
 meson_rtc_set_dir(rtc, 1);

 return 0;
}
