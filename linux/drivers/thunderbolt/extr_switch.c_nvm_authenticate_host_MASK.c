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
struct tb_switch {int /*<<< orphan*/  dma_port; int /*<<< orphan*/  tb; int /*<<< orphan*/  safe_mode; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct tb_switch *sw)
{
	int ret;

	/*
	 * Root switch NVM upgrade requires that we disconnect the
	 * existing paths first (in case it is not in safe mode
	 * already).
	 */
	if (!sw->safe_mode) {
		ret = FUNC2(sw->tb);
		if (ret)
			return ret;
		/*
		 * The host controller goes away pretty soon after this if
		 * everything goes well so getting timeout is expected.
		 */
		ret = FUNC0(sw->dma_port);
		return ret == -ETIMEDOUT ? 0 : ret;
	}

	/*
	 * From safe mode we can get out by just power cycling the
	 * switch.
	 */
	FUNC1(sw->dma_port);
	return 0;
}