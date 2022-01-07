
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int tv_nsec; int tv_sec; } ;
struct date_time_t {int MilliSecond; int Second; int Minute; int Hour; int Day; scalar_t__ Month; scalar_t__ Year; } ;


 int NSEC_PER_MSEC ;
 int mktime64 (scalar_t__,scalar_t__,int ,int ,int ,int ) ;

__attribute__((used)) static void exfat_time_fat2unix(struct timespec64 *ts, struct date_time_t *tp)
{
 ts->tv_sec = mktime64(tp->Year + 1980, tp->Month + 1, tp->Day,
         tp->Hour, tp->Minute, tp->Second);

 ts->tv_nsec = tp->MilliSecond * NSEC_PER_MSEC;
}
