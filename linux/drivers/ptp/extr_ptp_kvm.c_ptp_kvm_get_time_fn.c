
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timespec64 {int tv_nsec; int tv_sec; } ;
struct system_counterval_t {unsigned long cycles; int * cs; } ;
struct pvclock_vcpu_time_info {int dummy; } ;
typedef int ktime_t ;
struct TYPE_4__ {int tsc; int nsec; int sec; } ;
struct TYPE_3__ {struct pvclock_vcpu_time_info pvti; } ;


 int EOPNOTSUPP ;
 int KVM_CLOCK_PAIRING_WALLCLOCK ;
 int KVM_HC_CLOCK_PAIRING ;
 unsigned long __pvclock_read_cycles (struct pvclock_vcpu_time_info*,int ) ;
 TYPE_2__ clock_pair ;
 int clock_pair_gpa ;
 TYPE_1__* hv_clock ;
 int kvm_clock ;
 unsigned long kvm_hypercall2 (int ,int ,int ) ;
 int kvm_ptp_lock ;
 int pr_err_ratelimited (char*,unsigned long) ;
 int preempt_disable_notrace () ;
 int preempt_enable_notrace () ;
 unsigned int pvclock_read_begin (struct pvclock_vcpu_time_info*) ;
 scalar_t__ pvclock_read_retry (struct pvclock_vcpu_time_info*,unsigned int) ;
 int smp_processor_id () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int timespec64_to_ktime (struct timespec64) ;

__attribute__((used)) static int ptp_kvm_get_time_fn(ktime_t *device_time,
          struct system_counterval_t *system_counter,
          void *ctx)
{
 unsigned long ret;
 struct timespec64 tspec;
 unsigned version;
 int cpu;
 struct pvclock_vcpu_time_info *src;

 spin_lock(&kvm_ptp_lock);

 preempt_disable_notrace();
 cpu = smp_processor_id();
 src = &hv_clock[cpu].pvti;

 do {







  version = pvclock_read_begin(src);

  ret = kvm_hypercall2(KVM_HC_CLOCK_PAIRING,
         clock_pair_gpa,
         KVM_CLOCK_PAIRING_WALLCLOCK);
  if (ret != 0) {
   pr_err_ratelimited("clock pairing hypercall ret %lu\n", ret);
   spin_unlock(&kvm_ptp_lock);
   preempt_enable_notrace();
   return -EOPNOTSUPP;
  }

  tspec.tv_sec = clock_pair.sec;
  tspec.tv_nsec = clock_pair.nsec;
  ret = __pvclock_read_cycles(src, clock_pair.tsc);
 } while (pvclock_read_retry(src, version));

 preempt_enable_notrace();

 system_counter->cycles = ret;
 system_counter->cs = &kvm_clock;

 *device_time = timespec64_to_ktime(tspec);

 spin_unlock(&kvm_ptp_lock);

 return 0;
}
