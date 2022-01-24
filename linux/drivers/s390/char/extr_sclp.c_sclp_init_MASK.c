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
struct TYPE_2__ {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EXT_IRQ_SERVICE_SIG ; 
 int GFP_ATOMIC ; 
 int GFP_DMA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IRQ_SUBCLASS_SERVICE_SIGNAL ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 void* sclp_init_sccb ; 
 scalar_t__ sclp_init_state ; 
 scalar_t__ sclp_init_state_initialized ; 
 scalar_t__ sclp_init_state_initializing ; 
 scalar_t__ sclp_init_state_uninitialized ; 
 int /*<<< orphan*/  sclp_interrupt_handler ; 
 int /*<<< orphan*/  sclp_lock ; 
 int /*<<< orphan*/  sclp_queue_timer ; 
 void* sclp_read_sccb ; 
 int /*<<< orphan*/  sclp_reboot_notifier ; 
 int /*<<< orphan*/  sclp_reg_list ; 
 int /*<<< orphan*/  sclp_req_queue ; 
 int /*<<< orphan*/ * sclp_req_queue_timeout ; 
 int /*<<< orphan*/  sclp_request_timer ; 
 TYPE_1__ sclp_state_change_event ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC14(void)
{
	unsigned long flags;
	int rc = 0;

	FUNC10(&sclp_lock, flags);
	/* Check for previous or running initialization */
	if (sclp_init_state != sclp_init_state_uninitialized)
		goto fail_unlock;
	sclp_init_state = sclp_init_state_initializing;
	sclp_read_sccb = (void *) FUNC2(GFP_ATOMIC | GFP_DMA);
	sclp_init_sccb = (void *) FUNC2(GFP_ATOMIC | GFP_DMA);
	FUNC0(!sclp_read_sccb || !sclp_init_sccb);
	/* Set up variables */
	FUNC1(&sclp_req_queue);
	FUNC1(&sclp_reg_list);
	FUNC5(&sclp_state_change_event.list, &sclp_reg_list);
	FUNC12(&sclp_request_timer, NULL, 0);
	FUNC12(&sclp_queue_timer, sclp_req_queue_timeout, 0);
	/* Check interface */
	FUNC11(&sclp_lock, flags);
	rc = FUNC8();
	FUNC10(&sclp_lock, flags);
	if (rc)
		goto fail_init_state_uninitialized;
	/* Register reboot handler */
	rc = FUNC7(&sclp_reboot_notifier);
	if (rc)
		goto fail_init_state_uninitialized;
	/* Register interrupt handler */
	rc = FUNC6(EXT_IRQ_SERVICE_SIG, sclp_interrupt_handler);
	if (rc)
		goto fail_unregister_reboot_notifier;
	sclp_init_state = sclp_init_state_initialized;
	FUNC11(&sclp_lock, flags);
	/* Enable service-signal external interruption - needs to happen with
	 * IRQs enabled. */
	FUNC4(IRQ_SUBCLASS_SERVICE_SIGNAL);
	FUNC9(1);
	return 0;

fail_unregister_reboot_notifier:
	FUNC13(&sclp_reboot_notifier);
fail_init_state_uninitialized:
	sclp_init_state = sclp_init_state_uninitialized;
	FUNC3((unsigned long) sclp_read_sccb);
	FUNC3((unsigned long) sclp_init_sccb);
fail_unlock:
	FUNC11(&sclp_lock, flags);
	return rc;
}