
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc_time {int tm_min; int tm_hour; int tm_mday; int tm_wday; scalar_t__ tm_sec; } ;
struct rtc_wkalrm {int enabled; struct rtc_time time; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int HYM8563_ALM_BIT_DISABLE ;
 int HYM8563_ALM_MIN ;
 int HYM8563_CTL2 ;
 int HYM8563_CTL2_AIE ;
 int bin2bcd (int) ;
 int hym8563_rtc_alarm_irq_enable (struct device*,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int i2c_smbus_write_i2c_block_data (struct i2c_client*,int ,int,int *) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int hym8563_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alm)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct rtc_time *alm_tm = &alm->time;
 u8 buf[4];
 int ret;




 if (alm_tm->tm_sec) {
  alm_tm->tm_sec = 0;
  alm_tm->tm_min++;
  if (alm_tm->tm_min >= 60) {
   alm_tm->tm_min = 0;
   alm_tm->tm_hour++;
   if (alm_tm->tm_hour >= 24) {
    alm_tm->tm_hour = 0;
    alm_tm->tm_mday++;
    if (alm_tm->tm_mday > 31)
     alm_tm->tm_mday = 0;
   }
  }
 }

 ret = i2c_smbus_read_byte_data(client, HYM8563_CTL2);
 if (ret < 0)
  return ret;

 ret &= ~HYM8563_CTL2_AIE;

 ret = i2c_smbus_write_byte_data(client, HYM8563_CTL2, ret);
 if (ret < 0)
  return ret;

 buf[0] = (alm_tm->tm_min < 60 && alm_tm->tm_min >= 0) ?
   bin2bcd(alm_tm->tm_min) : HYM8563_ALM_BIT_DISABLE;

 buf[1] = (alm_tm->tm_hour < 24 && alm_tm->tm_hour >= 0) ?
   bin2bcd(alm_tm->tm_hour) : HYM8563_ALM_BIT_DISABLE;

 buf[2] = (alm_tm->tm_mday <= 31 && alm_tm->tm_mday >= 1) ?
   bin2bcd(alm_tm->tm_mday) : HYM8563_ALM_BIT_DISABLE;

 buf[3] = (alm_tm->tm_wday < 7 && alm_tm->tm_wday >= 0) ?
   bin2bcd(alm_tm->tm_wday) : HYM8563_ALM_BIT_DISABLE;

 ret = i2c_smbus_write_i2c_block_data(client, HYM8563_ALM_MIN, 4, buf);
 if (ret < 0)
  return ret;

 return hym8563_rtc_alarm_irq_enable(dev, alm->enabled);
}
