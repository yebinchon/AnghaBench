
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct meson_rtc {int dev; int reset; int peripheral; } ;


 int ETIMEDOUT ;
 int RTC_ADDR0 ;
 int RTC_ADDR0_LINE_SCLK ;
 int RTC_ADDR0_LINE_SDI ;
 int RTC_ADDR0_LINE_SEN ;
 int RTC_ADDR1 ;
 int RTC_ADDR1_S_READY ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*) ;
 int regmap_read_poll_timeout (int ,int ,int,int,int,int) ;
 int regmap_update_bits (int ,int ,int,int ) ;
 int reset_control_reset (int ) ;

__attribute__((used)) static int meson_rtc_get_bus(struct meson_rtc *rtc)
{
 int ret, retries = 3;
 u32 val;


 val = RTC_ADDR0_LINE_SDI | RTC_ADDR0_LINE_SEN | RTC_ADDR0_LINE_SCLK;
 regmap_update_bits(rtc->peripheral, RTC_ADDR0, val, 0);

 for (retries = 0; retries < 3; retries++) {

  if (!regmap_read_poll_timeout(rtc->peripheral, RTC_ADDR1, val,
           val & RTC_ADDR1_S_READY, 10,
           10000))
   return 0;

  dev_warn(rtc->dev, "failed to get bus, resetting RTC\n");

  ret = reset_control_reset(rtc->reset);
  if (ret)
   return ret;
 }

 dev_err(rtc->dev, "bus is not ready\n");
 return -ETIMEDOUT;
}
