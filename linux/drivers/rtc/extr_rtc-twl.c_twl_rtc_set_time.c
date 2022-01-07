
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl_rtc {int * reg_map; } ;
struct rtc_time {scalar_t__ tm_year; scalar_t__ tm_mon; scalar_t__ tm_mday; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;
struct device {int dummy; } ;


 int ALL_TIME_REGS ;
 unsigned char BIT_RTC_CTRL_REG_STOP_RTC_M ;
 int REG_RTC_CTRL_REG ;
 size_t REG_SECONDS_REG ;
 int TWL_MODULE_RTC ;
 unsigned char bin2bcd (scalar_t__) ;
 int dev_err (struct device*,char*,int) ;
 struct twl_rtc* dev_get_drvdata (struct device*) ;
 int twl_i2c_write (int ,unsigned char*,int ,int) ;
 int twl_rtc_read_u8 (struct twl_rtc*,unsigned char*,int ) ;
 int twl_rtc_write_u8 (struct twl_rtc*,unsigned char,int ) ;

__attribute__((used)) static int twl_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 struct twl_rtc *twl_rtc = dev_get_drvdata(dev);
 unsigned char save_control;
 unsigned char rtc_data[ALL_TIME_REGS];
 int ret;

 rtc_data[0] = bin2bcd(tm->tm_sec);
 rtc_data[1] = bin2bcd(tm->tm_min);
 rtc_data[2] = bin2bcd(tm->tm_hour);
 rtc_data[3] = bin2bcd(tm->tm_mday);
 rtc_data[4] = bin2bcd(tm->tm_mon + 1);
 rtc_data[5] = bin2bcd(tm->tm_year - 100);


 ret = twl_rtc_read_u8(twl_rtc, &save_control, REG_RTC_CTRL_REG);
 if (ret < 0)
  goto out;

 save_control &= ~BIT_RTC_CTRL_REG_STOP_RTC_M;
 ret = twl_rtc_write_u8(twl_rtc, save_control, REG_RTC_CTRL_REG);
 if (ret < 0)
  goto out;


 ret = twl_i2c_write(TWL_MODULE_RTC, rtc_data,
  (twl_rtc->reg_map[REG_SECONDS_REG]), ALL_TIME_REGS);
 if (ret < 0) {
  dev_err(dev, "rtc_set_time error %d\n", ret);
  goto out;
 }


 save_control |= BIT_RTC_CTRL_REG_STOP_RTC_M;
 ret = twl_rtc_write_u8(twl_rtc, save_control, REG_RTC_CTRL_REG);

out:
 return ret;
}
