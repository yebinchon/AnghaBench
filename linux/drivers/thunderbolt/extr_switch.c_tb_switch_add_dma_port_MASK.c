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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ enabled; } ;
struct tb_switch {int generation; int /*<<< orphan*/  dma_port; scalar_t__ no_nvm_upgrade; TYPE_1__ config; int /*<<< orphan*/  safe_mode; } ;

/* Variables and functions */
 int ESHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct tb_switch*) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tb_switch*) ; 
 int /*<<< orphan*/  FUNC4 (struct tb_switch*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct tb_switch*) ; 
 int /*<<< orphan*/  FUNC6 (struct tb_switch*,char*) ; 
 int FUNC7 (struct tb_switch*) ; 

__attribute__((used)) static int FUNC8(struct tb_switch *sw)
{
	u32 status;
	int ret;

	switch (sw->generation) {
	case 3:
		break;

	case 2:
		/* Only root switch can be upgraded */
		if (FUNC5(sw))
			return 0;
		break;

	default:
		/*
		 * DMA port is the only thing available when the switch
		 * is in safe mode.
		 */
		if (!sw->safe_mode)
			return 0;
		break;
	}

	/* Root switch DMA port requires running firmware */
	if (!FUNC5(sw) && sw->config.enabled)
		return 0;

	sw->dma_port = FUNC0(sw);
	if (!sw->dma_port)
		return 0;

	if (sw->no_nvm_upgrade)
		return 0;

	/*
	 * Check status of the previous flash authentication. If there
	 * is one we need to power cycle the switch in any case to make
	 * it functional again.
	 */
	ret = FUNC1(sw->dma_port, &status);
	if (ret <= 0)
		return ret;

	/* Now we can allow root port to suspend again */
	if (!FUNC5(sw))
		FUNC3(sw);

	if (status) {
		FUNC6(sw, "switch flash authentication failed\n");
		ret = FUNC7(sw);
		if (ret)
			return ret;
		FUNC4(sw, status);
	}

	FUNC6(sw, "power cycling the switch now\n");
	FUNC2(sw->dma_port);

	/*
	 * We return error here which causes the switch adding failure.
	 * It should appear back after power cycle is complete.
	 */
	return -ESHUTDOWN;
}