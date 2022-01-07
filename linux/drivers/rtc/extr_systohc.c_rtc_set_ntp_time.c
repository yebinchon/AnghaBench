
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec64 {unsigned long tv_nsec; int tv_sec; } ;
struct rtc_time {int dummy; } ;
struct rtc_device {int set_offset_nsec; TYPE_1__* ops; } ;
struct TYPE_2__ {int set_time; } ;


 int CONFIG_RTC_SYSTOHC_DEVICE ;
 int ENODEV ;
 int EPROTO ;
 int rtc_class_close (struct rtc_device*) ;
 struct rtc_device* rtc_class_open (int ) ;
 int rtc_set_time (struct rtc_device*,struct rtc_time*) ;
 int rtc_time64_to_tm (int ,struct rtc_time*) ;
 int rtc_tv_nsec_ok (int ,struct timespec64*,struct timespec64*) ;
 int set_normalized_timespec64 (struct timespec64*,int ,int ) ;

int rtc_set_ntp_time(struct timespec64 now, unsigned long *target_nsec)
{
 struct rtc_device *rtc;
 struct rtc_time tm;
 struct timespec64 to_set;
 int err = -ENODEV;
 bool ok;

 rtc = rtc_class_open(CONFIG_RTC_SYSTOHC_DEVICE);
 if (!rtc)
  goto out_err;

 if (!rtc->ops || !rtc->ops->set_time)
  goto out_close;





 set_normalized_timespec64(&to_set, 0, -rtc->set_offset_nsec);
 *target_nsec = to_set.tv_nsec;





 ok = rtc_tv_nsec_ok(rtc->set_offset_nsec, &to_set, &now);
 if (!ok) {
  err = -EPROTO;
  goto out_close;
 }

 rtc_time64_to_tm(to_set.tv_sec, &tm);

 err = rtc_set_time(rtc, &tm);

out_close:
 rtc_class_close(rtc);
out_err:
 return err;
}
