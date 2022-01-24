#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct evtchn_bind_vcpu {int port; int /*<<< orphan*/  vcpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVTCHNOP_bind_vcpu ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct evtchn_bind_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 

__attribute__((used)) static int FUNC7(int evtchn, unsigned int tcpu)
{
	struct evtchn_bind_vcpu bind_vcpu;
	int masked;

	if (!FUNC1(evtchn))
		return -1;

	if (!FUNC5())
		return -1;

	/* Send future instances of this interrupt to other vcpu. */
	bind_vcpu.port = evtchn;
	bind_vcpu.vcpu = FUNC6(tcpu);

	/*
	 * Mask the event while changing the VCPU binding to prevent
	 * it being delivered on an unexpected VCPU.
	 */
	masked = FUNC3(evtchn);

	/*
	 * If this fails, it usually just indicates that we're dealing with a
	 * virq or IPI channel, which don't actually need to be rebound. Ignore
	 * it, but don't do the xenlinux-level rebind in that case.
	 */
	if (FUNC0(EVTCHNOP_bind_vcpu, &bind_vcpu) >= 0)
		FUNC2(evtchn, tcpu);

	if (!masked)
		FUNC4(evtchn);

	return 0;
}