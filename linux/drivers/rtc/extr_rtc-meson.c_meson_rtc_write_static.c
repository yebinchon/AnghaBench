
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct meson_rtc {int peripheral; } ;


 int FIELD_PREP (int,int) ;
 int RTC_ADDR0 ;
 int RTC_ADDR0_DATA ;
 int RTC_ADDR0_START_SER ;
 int RTC_ADDR0_WAIT_SER ;
 int RTC_REG4 ;
 int RTC_REG4_STATIC_VALUE ;
 int regmap_read_poll_timeout (int ,int ,int,int,int,int) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int meson_rtc_write_static(struct meson_rtc *rtc, u32 data)
{
 u32 tmp;

 regmap_write(rtc->peripheral, RTC_REG4,
       FIELD_PREP(RTC_REG4_STATIC_VALUE, (data >> 8)));


 tmp = FIELD_PREP(RTC_ADDR0_DATA, (data & 0xff)) | RTC_ADDR0_START_SER;
 regmap_update_bits(rtc->peripheral, RTC_ADDR0,
      RTC_ADDR0_DATA | RTC_ADDR0_START_SER, tmp);


 return regmap_read_poll_timeout(rtc->peripheral, RTC_REG4, tmp,
     !(tmp & RTC_ADDR0_WAIT_SER), 10,
     10000);
}
