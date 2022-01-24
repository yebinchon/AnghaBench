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
typedef  int /*<<< orphan*/  u32 ;
typedef  enum omap_channel { ____Placeholder_omap_channel } omap_channel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  dispc_mgr_disable_isr ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  framedone_compl ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(enum omap_channel channel)
{
	FUNC0(framedone_compl);
	int r;
	u32 irq;

	if (!FUNC4(channel))
		return;

	/*
	 * When we disable LCD output, we need to wait for FRAMEDONE to know
	 * that DISPC has finished with the LCD output.
	 */

	irq = FUNC3(channel);

	r = FUNC7(dispc_mgr_disable_isr, &framedone_compl,
			irq);
	if (r)
		FUNC1("failed to register FRAMEDONE isr\n");

	FUNC2(channel, false);

	/* if we couldn't register for framedone, just sleep and exit */
	if (r) {
		FUNC6(100);
		return;
	}

	if (!FUNC9(&framedone_compl,
				FUNC5(100)))
		FUNC1("timeout waiting for FRAME DONE\n");

	r = FUNC8(dispc_mgr_disable_isr, &framedone_compl,
			irq);
	if (r)
		FUNC1("failed to unregister FRAMEDONE isr\n");
}