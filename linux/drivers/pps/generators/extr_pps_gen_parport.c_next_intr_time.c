
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int tv_nsec; scalar_t__ tv_sec; } ;
struct pps_generator_pp {scalar_t__ port_write_time; } ;
typedef int ktime_t ;


 int NSEC_PER_MSEC ;
 scalar_t__ NSEC_PER_SEC ;
 int SAFETY_INTERVAL ;
 int ktime_get_real_ts64 (struct timespec64*) ;
 int ktime_set (scalar_t__,scalar_t__) ;
 scalar_t__ send_delay ;

__attribute__((used)) static inline ktime_t next_intr_time(struct pps_generator_pp *dev)
{
 struct timespec64 ts;

 ktime_get_real_ts64(&ts);

 return ktime_set(ts.tv_sec +
   ((ts.tv_nsec > 990 * NSEC_PER_MSEC) ? 1 : 0),
   NSEC_PER_SEC - (send_delay +
   dev->port_write_time + 3 * SAFETY_INTERVAL));
}
