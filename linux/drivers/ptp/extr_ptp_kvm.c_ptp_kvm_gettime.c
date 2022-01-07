
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec64 {int tv_nsec; int tv_sec; } ;
struct ptp_clock_info {int dummy; } ;
struct TYPE_2__ {int nsec; int sec; } ;


 int EOPNOTSUPP ;
 int KVM_CLOCK_PAIRING_WALLCLOCK ;
 int KVM_HC_CLOCK_PAIRING ;
 TYPE_1__ clock_pair ;
 int clock_pair_gpa ;
 unsigned long kvm_hypercall2 (int ,int ,int ) ;
 int kvm_ptp_lock ;
 int memcpy (struct timespec64*,struct timespec64*,int) ;
 int pr_err_ratelimited (char*,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ptp_kvm_gettime(struct ptp_clock_info *ptp, struct timespec64 *ts)
{
 unsigned long ret;
 struct timespec64 tspec;

 spin_lock(&kvm_ptp_lock);

 ret = kvm_hypercall2(KVM_HC_CLOCK_PAIRING,
        clock_pair_gpa,
        KVM_CLOCK_PAIRING_WALLCLOCK);
 if (ret != 0) {
  pr_err_ratelimited("clock offset hypercall ret %lu\n", ret);
  spin_unlock(&kvm_ptp_lock);
  return -EOPNOTSUPP;
 }

 tspec.tv_sec = clock_pair.sec;
 tspec.tv_nsec = clock_pair.nsec;
 spin_unlock(&kvm_ptp_lock);

 memcpy(ts, &tspec, sizeof(struct timespec64));

 return 0;
}
