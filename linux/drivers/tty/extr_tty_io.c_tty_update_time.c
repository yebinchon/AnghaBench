
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time64_t ;
struct timespec64 {int tv_sec; } ;


 int ktime_get_real_seconds () ;

__attribute__((used)) static void tty_update_time(struct timespec64 *time)
{
 time64_t sec = ktime_get_real_seconds();







 if ((sec ^ time->tv_sec) & ~7)
  time->tv_sec = sec;
}
