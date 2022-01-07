
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wilco_ec_message {int request_size; struct ec_rtc_write_request* request_data; int type; } ;
struct wilco_ec_device {int dummy; } ;
struct rtc_time {int tm_year; int tm_wday; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
struct ec_rtc_write_request {void* weekday; void* second; void* minute; void* hour; void* day; void* month; void* year; void* century; int param; int command; } ;
struct device {int parent; } ;
typedef int rtc ;
typedef int msg ;


 int EC_CMOS_TOD_WRITE ;
 int EC_COMMAND_CMOS ;
 int WILCO_EC_MSG_LEGACY ;
 void* bin2bcd (int) ;
 struct wilco_ec_device* dev_get_drvdata (int ) ;
 int memset (struct wilco_ec_message*,int ,int) ;
 int wilco_ec_mailbox (struct wilco_ec_device*,struct wilco_ec_message*) ;

__attribute__((used)) static int wilco_ec_rtc_write(struct device *dev, struct rtc_time *tm)
{
 struct wilco_ec_device *ec = dev_get_drvdata(dev->parent);
 struct ec_rtc_write_request rtc;
 struct wilco_ec_message msg;
 int year = tm->tm_year + 1900;





 int wday = tm->tm_wday == 6 ? 0 : tm->tm_wday + 1;
 int ret;

 rtc.command = EC_COMMAND_CMOS;
 rtc.param = EC_CMOS_TOD_WRITE;
 rtc.century = bin2bcd(year / 100);
 rtc.year = bin2bcd(year % 100);
 rtc.month = bin2bcd(tm->tm_mon + 1);
 rtc.day = bin2bcd(tm->tm_mday);
 rtc.hour = bin2bcd(tm->tm_hour);
 rtc.minute = bin2bcd(tm->tm_min);
 rtc.second = bin2bcd(tm->tm_sec);
 rtc.weekday = bin2bcd(wday);

 memset(&msg, 0, sizeof(msg));
 msg.type = WILCO_EC_MSG_LEGACY;
 msg.request_data = &rtc;
 msg.request_size = sizeof(rtc);

 ret = wilco_ec_mailbox(ec, &msg);
 if (ret < 0)
  return ret;

 return 0;
}
