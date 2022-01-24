#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct TYPE_5__ {int /*<<< orphan*/  (* function ) (TYPE_1__*) ;scalar_t__ expires; } ;

/* Variables and functions */
 unsigned long CR0_IRQ_SUBCLASS_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 () ; 
 int FUNC7 () ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long) ; 
 unsigned long long FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (unsigned long long) ; 
 TYPE_1__ sclp_request_timer ; 
 scalar_t__ sclp_running_state ; 
 scalar_t__ sclp_running_state_idle ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 scalar_t__ FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 () ; 

void
FUNC18(void)
{
	unsigned long long old_tick;
	unsigned long flags;
	unsigned long cr0, cr0_sync;
	u64 timeout;
	int irq_context;

	/* We'll be disabling timer interrupts, so we need a custom timeout
	 * mechanism */
	timeout = 0;
	if (FUNC16(&sclp_request_timer)) {
		/* Get timeout TOD value */
		timeout = FUNC6() +
			  FUNC14(sclp_request_timer.expires -
						jiffies);
	}
	FUNC11(flags);
	/* Prevent bottom half from executing once we force interrupts open */
	irq_context = FUNC7();
	if (!irq_context)
		FUNC8();
	/* Enable service-signal interruption, disable timer interrupts */
	old_tick = FUNC12();
	FUNC17();
	FUNC2(cr0, 0, 0);
	cr0_sync = cr0 & ~CR0_IRQ_SUBCLASS_MASK;
	cr0_sync |= 1UL << (63 - 54);
	FUNC1(cr0_sync, 0, 0);
	FUNC0(0x01);
	/* Loop until driver state indicates finished request */
	while (sclp_running_state != sclp_running_state_idle) {
		/* Check for expired request timer */
		if (FUNC16(&sclp_request_timer) &&
		    FUNC6() > timeout &&
		    FUNC5(&sclp_request_timer))
			sclp_request_timer.function(&sclp_request_timer);
		FUNC4();
	}
	FUNC9();
	FUNC1(cr0, 0, 0);
	if (!irq_context)
		FUNC3();
	FUNC13(old_tick);
	FUNC10(flags);
}