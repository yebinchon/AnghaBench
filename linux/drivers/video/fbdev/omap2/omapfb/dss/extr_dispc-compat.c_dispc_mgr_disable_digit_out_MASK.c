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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  OMAP_DSS_CHANNEL_DIGIT ; 
 int /*<<< orphan*/  dispc_mgr_disable_isr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  framedone_compl ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(void)
{
	FUNC0(framedone_compl);
	int r, i;
	u32 irq_mask;
	int num_irqs;

	if (!FUNC5(OMAP_DSS_CHANNEL_DIGIT))
		return;

	/*
	 * When we disable the digit output, we need to wait for FRAMEDONE to
	 * know that DISPC has finished with the output.
	 */

	irq_mask = FUNC3(OMAP_DSS_CHANNEL_DIGIT);
	num_irqs = 1;

	if (!irq_mask) {
		/*
		 * omap 2/3 don't have framedone irq for TV, so we need to use
		 * vsyncs for this.
		 */

		irq_mask = FUNC4(OMAP_DSS_CHANNEL_DIGIT);
		/*
		 * We need to wait for both even and odd vsyncs. Note that this
		 * is not totally reliable, as we could get a vsync interrupt
		 * before we disable the output, which leads to timeout in the
		 * wait_for_completion.
		 */
		num_irqs = 2;
	}

	r = FUNC8(dispc_mgr_disable_isr, &framedone_compl,
			irq_mask);
	if (r)
		FUNC1("failed to register %x isr\n", irq_mask);

	FUNC2(OMAP_DSS_CHANNEL_DIGIT, false);

	/* if we couldn't register the irq, just sleep and exit */
	if (r) {
		FUNC7(100);
		return;
	}

	for (i = 0; i < num_irqs; ++i) {
		if (!FUNC10(&framedone_compl,
					FUNC6(100)))
			FUNC1("timeout waiting for digit out to stop\n");
	}

	r = FUNC9(dispc_mgr_disable_isr, &framedone_compl,
			irq_mask);
	if (r)
		FUNC1("failed to unregister %x isr\n", irq_mask);
}