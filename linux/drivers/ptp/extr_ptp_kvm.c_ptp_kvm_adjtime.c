
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptp_clock_info {int dummy; } ;
typedef int s64 ;


 int EOPNOTSUPP ;

__attribute__((used)) static int ptp_kvm_adjtime(struct ptp_clock_info *ptp, s64 delta)
{
 return -EOPNOTSUPP;
}
