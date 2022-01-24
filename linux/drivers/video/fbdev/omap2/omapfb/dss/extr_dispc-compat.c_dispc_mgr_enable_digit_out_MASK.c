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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  OMAP_DSS_CHANNEL_DIGIT ; 
 int /*<<< orphan*/  dispc_digit_out_enable_isr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  vsync_compl ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(void)
{
	FUNC0(vsync_compl);
	int r;
	u32 irq_mask;

	if (FUNC5(OMAP_DSS_CHANNEL_DIGIT))
		return;

	/*
	 * Digit output produces some sync lost interrupts during the first
	 * frame when enabling. Those need to be ignored, so we register for the
	 * sync lost irq to prevent the error handler from triggering.
	 */

	irq_mask = FUNC4(OMAP_DSS_CHANNEL_DIGIT) |
		FUNC3(OMAP_DSS_CHANNEL_DIGIT);

	r = FUNC7(dispc_digit_out_enable_isr, &vsync_compl,
			irq_mask);
	if (r) {
		FUNC1("failed to register %x isr\n", irq_mask);
		return;
	}

	FUNC2(OMAP_DSS_CHANNEL_DIGIT, true);

	/* wait for the first evsync */
	if (!FUNC9(&vsync_compl, FUNC6(100)))
		FUNC1("timeout waiting for digit out to start\n");

	r = FUNC8(dispc_digit_out_enable_isr, &vsync_compl,
			irq_mask);
	if (r)
		FUNC1("failed to unregister %x isr\n", irq_mask);
}