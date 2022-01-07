
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd3078 {int regmap; } ;
struct rtc_time {int tm_wday; scalar_t__ tm_year; scalar_t__ tm_mon; scalar_t__ tm_mday; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int NUM_TIME_REGS ;
 size_t SD3078_REG_DM ;
 size_t SD3078_REG_DW ;
 size_t SD3078_REG_HR ;
 size_t SD3078_REG_MN ;
 size_t SD3078_REG_MO ;
 size_t SD3078_REG_SC ;
 size_t SD3078_REG_YR ;
 int bin2bcd (scalar_t__) ;
 int dev_err (struct device*,char*,int) ;
 struct sd3078* i2c_get_clientdata (struct i2c_client*) ;
 int regmap_bulk_write (int ,size_t,unsigned char*,int) ;
 int sd3078_disable_reg_write (struct sd3078*) ;
 int sd3078_enable_reg_write (struct sd3078*) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int sd3078_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 unsigned char rtc_data[NUM_TIME_REGS];
 struct i2c_client *client = to_i2c_client(dev);
 struct sd3078 *sd3078 = i2c_get_clientdata(client);
 int ret;

 rtc_data[SD3078_REG_SC] = bin2bcd(tm->tm_sec);
 rtc_data[SD3078_REG_MN] = bin2bcd(tm->tm_min);
 rtc_data[SD3078_REG_HR] = bin2bcd(tm->tm_hour) | 0x80;
 rtc_data[SD3078_REG_DM] = bin2bcd(tm->tm_mday);
 rtc_data[SD3078_REG_DW] = tm->tm_wday & 0x07;
 rtc_data[SD3078_REG_MO] = bin2bcd(tm->tm_mon) + 1;
 rtc_data[SD3078_REG_YR] = bin2bcd(tm->tm_year - 100);





 ret = regmap_bulk_write(sd3078->regmap, SD3078_REG_SC, rtc_data,
    NUM_TIME_REGS);
 if (ret < 0) {
  dev_err(dev, "writing to RTC failed with err:%d\n", ret);
  return ret;
 }





 return 0;
}
