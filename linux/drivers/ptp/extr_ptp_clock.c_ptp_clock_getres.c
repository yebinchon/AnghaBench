
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int tv_nsec; scalar_t__ tv_sec; } ;
struct posix_clock {int dummy; } ;



__attribute__((used)) static int ptp_clock_getres(struct posix_clock *pc, struct timespec64 *tp)
{
 tp->tv_sec = 0;
 tp->tv_nsec = 1;
 return 0;
}
