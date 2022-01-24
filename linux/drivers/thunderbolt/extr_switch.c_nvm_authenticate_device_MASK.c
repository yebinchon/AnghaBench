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
struct tb_switch {int /*<<< orphan*/  dma_port; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct tb_switch*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct tb_switch*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct tb_switch*,char*) ; 

__attribute__((used)) static int FUNC7(struct tb_switch *sw)
{
	int ret, retries = 10;

	ret = FUNC0(sw->dma_port);
	if (ret && ret != -ETIMEDOUT)
		return ret;

	/*
	 * Poll here for the authentication status. It takes some time
	 * for the device to respond (we get timeout for a while). Once
	 * we get response the device needs to be power cycled in order
	 * to the new NVM to be taken into use.
	 */
	do {
		u32 status;

		ret = FUNC1(sw->dma_port, &status);
		if (ret < 0 && ret != -ETIMEDOUT)
			return ret;
		if (ret > 0) {
			if (status) {
				FUNC6(sw, "failed to authenticate NVM\n");
				FUNC4(sw, status);
			}

			FUNC5(sw, "power cycling the switch now\n");
			FUNC2(sw->dma_port);
			return 0;
		}

		FUNC3(500);
	} while (--retries);

	return -ETIMEDOUT;
}