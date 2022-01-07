
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int dummy; } ;
struct ptp_clock_info {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int ptp_kvm_settime(struct ptp_clock_info *ptp,
      const struct timespec64 *ts)
{
 return -EOPNOTSUPP;
}
