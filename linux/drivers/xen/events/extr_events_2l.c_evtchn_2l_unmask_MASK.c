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
struct vcpu_info {int evtchn_upcall_pending; int /*<<< orphan*/  evtchn_pending_sel; } ;
struct shared_info {int /*<<< orphan*/ * evtchn_mask; int /*<<< orphan*/ * evtchn_pending; } ;
struct evtchn_unmask {unsigned int port; } ;

/* Variables and functions */
 unsigned int BITS_PER_EVTCHN_WORD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  EVTCHNOP_unmask ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct evtchn_unmask*) ; 
 struct shared_info* HYPERVISOR_shared_info ; 
 struct vcpu_info* FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (unsigned int) ; 
 unsigned int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC11 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int) ; 
 scalar_t__ FUNC13 () ; 
 int /*<<< orphan*/  xen_vcpu ; 

__attribute__((used)) static void FUNC14(unsigned port)
{
	struct shared_info *s = HYPERVISOR_shared_info;
	unsigned int cpu = FUNC5();
	int do_hypercall = 0, evtchn_pending = 0;

	FUNC1(!FUNC6());

	if (FUNC12((cpu != FUNC4(port))))
		do_hypercall = 1;
	else {
		/*
		 * Need to clear the mask before checking pending to
		 * avoid a race with an event becoming pending.
		 *
		 * EVTCHNOP_unmask will only trigger an upcall if the
		 * mask bit was set, so if a hypercall is needed
		 * remask the event.
		 */
		FUNC8(port, FUNC0(&s->evtchn_mask[0]));
		evtchn_pending = FUNC11(port, FUNC0(&s->evtchn_pending[0]));

		if (FUNC12(evtchn_pending && FUNC13())) {
			FUNC9(port, FUNC0(&s->evtchn_mask[0]));
			do_hypercall = 1;
		}
	}

	/* Slow path (hypercall) if this is a non-local port or if this is
	 * an hvm domain and an event is pending (hvm domains don't have
	 * their own implementation of irq_enable). */
	if (do_hypercall) {
		struct evtchn_unmask unmask = { .port = port };
		(void)FUNC2(EVTCHNOP_unmask, &unmask);
	} else {
		struct vcpu_info *vcpu_info = FUNC3(xen_vcpu);

		/*
		 * The following is basically the equivalent of
		 * 'hw_resend_irq'. Just like a real IO-APIC we 'lose
		 * the interrupt edge' if the channel is masked.
		 */
		if (evtchn_pending &&
		    !FUNC10(port / BITS_PER_EVTCHN_WORD,
					   FUNC0(&vcpu_info->evtchn_pending_sel)))
			vcpu_info->evtchn_upcall_pending = 1;
	}

	FUNC7();
}