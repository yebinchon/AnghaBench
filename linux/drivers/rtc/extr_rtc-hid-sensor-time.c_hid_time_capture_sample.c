
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc_time {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
struct hid_time_state {struct rtc_time time_buf; } ;
struct hid_sensor_hub_device {int dummy; } ;


 int EINVAL ;






 scalar_t__ hid_time_value (size_t,char*) ;
 struct hid_time_state* platform_get_drvdata (void*) ;

__attribute__((used)) static int hid_time_capture_sample(struct hid_sensor_hub_device *hsdev,
    unsigned usage_id, size_t raw_len,
    char *raw_data, void *priv)
{
 struct hid_time_state *time_state = platform_get_drvdata(priv);
 struct rtc_time *time_buf = &time_state->time_buf;

 switch (usage_id) {
 case 128:





  if (raw_len == 1) {
   time_buf->tm_year = *(u8 *)raw_data;
   if (time_buf->tm_year < 70)

    time_buf->tm_year += 100;
  } else
   time_buf->tm_year =
    (int)hid_time_value(raw_len, raw_data)-1900;
  break;
 case 130:

  time_buf->tm_mon = (int)hid_time_value(raw_len, raw_data)-1;
  break;
 case 133:
  time_buf->tm_mday = (int)hid_time_value(raw_len, raw_data);
  break;
 case 132:
  time_buf->tm_hour = (int)hid_time_value(raw_len, raw_data);
  break;
 case 131:
  time_buf->tm_min = (int)hid_time_value(raw_len, raw_data);
  break;
 case 129:
  time_buf->tm_sec = (int)hid_time_value(raw_len, raw_data);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
