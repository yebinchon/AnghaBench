#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct timespec64 {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct ptp_clock_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  nsec; int /*<<< orphan*/  sec; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  KVM_CLOCK_PAIRING_WALLCLOCK ; 
 int /*<<< orphan*/  KVM_HC_CLOCK_PAIRING ; 
 TYPE_1__ clock_pair ; 
 int /*<<< orphan*/  clock_pair_gpa ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kvm_ptp_lock ; 
 int /*<<< orphan*/  FUNC1 (struct timespec64*,struct timespec64*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct ptp_clock_info *ptp, struct timespec64 *ts)
{
	unsigned long ret;
	struct timespec64 tspec;

	FUNC3(&kvm_ptp_lock);

	ret = FUNC0(KVM_HC_CLOCK_PAIRING,
			     clock_pair_gpa,
			     KVM_CLOCK_PAIRING_WALLCLOCK);
	if (ret != 0) {
		FUNC2("clock offset hypercall ret %lu\n", ret);
		FUNC4(&kvm_ptp_lock);
		return -EOPNOTSUPP;
	}

	tspec.tv_sec = clock_pair.sec;
	tspec.tv_nsec = clock_pair.nsec;
	FUNC4(&kvm_ptp_lock);

	FUNC1(ts, &tspec, sizeof(struct timespec64));

	return 0;
}