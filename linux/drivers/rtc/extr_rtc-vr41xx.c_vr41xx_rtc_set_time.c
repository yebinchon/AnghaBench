
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time64_t ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int epoch ;
 scalar_t__ mktime64 (int ,int,int,int ,int ,int ) ;
 scalar_t__ rtc_tm_to_time64 (struct rtc_time*) ;
 int write_elapsed_second (scalar_t__) ;

__attribute__((used)) static int vr41xx_rtc_set_time(struct device *dev, struct rtc_time *time)
{
 time64_t epoch_sec, current_sec;

 epoch_sec = mktime64(epoch, 1, 1, 0, 0, 0);
 current_sec = rtc_tm_to_time64(time);

 write_elapsed_second(current_sec - epoch_sec);

 return 0;
}
