
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int tv_nsec; int tv_sec; } ;
struct coda_timespec {int tv_nsec; int tv_sec; } ;



__attribute__((used)) static struct timespec64 coda_to_timespec64(struct coda_timespec ts)
{
 struct timespec64 ts64 = {
  .tv_sec = ts.tv_sec,
  .tv_nsec = ts.tv_nsec,
 };

 return ts64;
}
