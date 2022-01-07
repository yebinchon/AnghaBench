
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int tv_sec; unsigned int tv_nsec; } ;


 unsigned int NSEC_PER_USEC ;
 unsigned int USEC_PER_SEC ;
 int ktime_get_ts64 (struct timespec64*) ;

__attribute__((used)) static inline unsigned int mon_get_timestamp(void)
{
 struct timespec64 now;
 unsigned int stamp;

 ktime_get_ts64(&now);
 stamp = now.tv_sec & 0xFFF;
 stamp = stamp * USEC_PER_SEC + now.tv_nsec / NSEC_PER_USEC;
 return stamp;
}
