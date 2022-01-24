#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timespec64 {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct system_counterval_t {unsigned long cycles; int /*<<< orphan*/ * cs; } ;
struct pvclock_vcpu_time_info {int dummy; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_4__ {int /*<<< orphan*/  tsc; int /*<<< orphan*/  nsec; int /*<<< orphan*/  sec; } ;
struct TYPE_3__ {struct pvclock_vcpu_time_info pvti; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  KVM_CLOCK_PAIRING_WALLCLOCK ; 
 int /*<<< orphan*/  KVM_HC_CLOCK_PAIRING ; 
 unsigned long FUNC0 (struct pvclock_vcpu_time_info*,int /*<<< orphan*/ ) ; 
 TYPE_2__ clock_pair ; 
 int /*<<< orphan*/  clock_pair_gpa ; 
 TYPE_1__* hv_clock ; 
 int /*<<< orphan*/  kvm_clock ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kvm_ptp_lock ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 unsigned int FUNC5 (struct pvclock_vcpu_time_info*) ; 
 scalar_t__ FUNC6 (struct pvclock_vcpu_time_info*,unsigned int) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct timespec64) ; 

__attribute__((used)) static int FUNC11(ktime_t *device_time,
			       struct system_counterval_t *system_counter,
			       void *ctx)
{
	unsigned long ret;
	struct timespec64 tspec;
	unsigned version;
	int cpu;
	struct pvclock_vcpu_time_info *src;

	FUNC8(&kvm_ptp_lock);

	FUNC3();
	cpu = FUNC7();
	src = &hv_clock[cpu].pvti;

	do {
		/*
		 * We are using a TSC value read in the hosts
		 * kvm_hc_clock_pairing handling.
		 * So any changes to tsc_to_system_mul
		 * and tsc_shift or any other pvclock
		 * data invalidate that measurement.
		 */
		version = FUNC5(src);

		ret = FUNC1(KVM_HC_CLOCK_PAIRING,
				     clock_pair_gpa,
				     KVM_CLOCK_PAIRING_WALLCLOCK);
		if (ret != 0) {
			FUNC2("clock pairing hypercall ret %lu\n", ret);
			FUNC9(&kvm_ptp_lock);
			FUNC4();
			return -EOPNOTSUPP;
		}

		tspec.tv_sec = clock_pair.sec;
		tspec.tv_nsec = clock_pair.nsec;
		ret = FUNC0(src, clock_pair.tsc);
	} while (FUNC6(src, version));

	FUNC4();

	system_counter->cycles = ret;
	system_counter->cs = &kvm_clock;

	*device_time = FUNC10(tspec);

	FUNC9(&kvm_ptp_lock);

	return 0;
}