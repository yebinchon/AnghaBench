
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tps80031_rtc {int dummy; } ;
struct device {int parent; } ;


 int ALARM_INT_STATUS ;
 int TPS80031_RTC_STATUS_REG ;
 int TPS80031_SLAVE_ID1 ;
 int dev_err (struct device*,char*,int) ;
 int tps80031_read (int ,int ,int ,int *) ;
 int tps80031_set_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int clear_alarm_int_status(struct device *dev, struct tps80031_rtc *rtc)
{
 int ret;
 u8 buf;






 ret = tps80031_read(dev->parent, TPS80031_SLAVE_ID1,
    TPS80031_RTC_STATUS_REG, &buf);
 if (ret < 0) {
  dev_err(dev, "reading RTC_STATUS failed. err = %d\n", ret);
  return ret;
 }


 ret = tps80031_set_bits(dev->parent, TPS80031_SLAVE_ID1,
   TPS80031_RTC_STATUS_REG, ALARM_INT_STATUS);
 if (ret < 0) {
  dev_err(dev, "clear Alarm INT failed, err = %d\n", ret);
  return ret;
 }
 return 0;
}
