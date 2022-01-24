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
struct wl1251 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_REG_SLV_SOFT_RESET ; 
 int ACX_SLV_SOFT_RESET_BIT ; 
 int /*<<< orphan*/  DEBUG_BOOT ; 
 int /*<<< orphan*/  ENABLE ; 
 int /*<<< orphan*/  SOFT_RESET_MAX_TIME ; 
 int /*<<< orphan*/  SOFT_RESET_STALL_TIME ; 
 int /*<<< orphan*/  SPARE_A2 ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (struct wl1251*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wl1251*,int /*<<< orphan*/ ,int) ; 

int FUNC7(struct wl1251 *wl)
{
	unsigned long timeout;
	u32 boot_data;

	/* perform soft reset */
	FUNC6(wl, ACX_REG_SLV_SOFT_RESET, ACX_SLV_SOFT_RESET_BIT);

	/* SOFT_RESET is self clearing */
	timeout = jiffies + FUNC2(SOFT_RESET_MAX_TIME);
	while (1) {
		boot_data = FUNC5(wl, ACX_REG_SLV_SOFT_RESET);
		FUNC3(DEBUG_BOOT, "soft reset bootdata 0x%x", boot_data);
		if ((boot_data & ACX_SLV_SOFT_RESET_BIT) == 0)
			break;

		if (FUNC0(jiffies, timeout)) {
			/* 1.2 check pWhalBus->uSelfClearTime if the
			 * timeout was reached */
			FUNC4("soft reset timeout");
			return -1;
		}

		FUNC1(SOFT_RESET_STALL_TIME);
	}

	/* disable Rx/Tx */
	FUNC6(wl, ENABLE, 0x0);

	/* disable auto calibration on start*/
	FUNC6(wl, SPARE_A2, 0xffff);

	return 0;
}