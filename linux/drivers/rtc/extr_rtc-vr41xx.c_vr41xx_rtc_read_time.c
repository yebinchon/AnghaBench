
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time64_t ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int epoch ;
 scalar_t__ mktime64 (int ,int,int,int ,int ,int ) ;
 scalar_t__ read_elapsed_second () ;
 int rtc_time64_to_tm (scalar_t__,struct rtc_time*) ;

__attribute__((used)) static int vr41xx_rtc_read_time(struct device *dev, struct rtc_time *time)
{
 time64_t epoch_sec, elapsed_sec;

 epoch_sec = mktime64(epoch, 1, 1, 0, 0, 0);
 elapsed_sec = read_elapsed_second();

 rtc_time64_to_tm(epoch_sec + elapsed_sec, time);

 return 0;
}
