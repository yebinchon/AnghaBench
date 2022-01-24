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
struct wl1271 {int /*<<< orphan*/ * ptable; } ;

/* Variables and functions */
 size_t PART_BOOT ; 
 int /*<<< orphan*/  REG_INTERRUPT_MASK ; 
 int /*<<< orphan*/  WELP_ARM_COMMAND_VAL ; 
 int /*<<< orphan*/  WL1271_ACX_INTR_ALL ; 
 int /*<<< orphan*/  WL18XX_WELP_ARM_COMMAND ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct wl1271*) ; 
 int FUNC2 (struct wl1271*) ; 
 int FUNC3 (struct wl1271*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct wl1271*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct wl1271*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct wl1271 *wl)
{
	int ret;

	ret = FUNC2(wl);
	if (ret < 0)
		goto out;

	/* Continue the ELP wake up sequence */
	ret = FUNC4(wl, WL18XX_WELP_ARM_COMMAND, WELP_ARM_COMMAND_VAL);
	if (ret < 0)
		goto out;

	FUNC0(500);

	ret = FUNC3(wl, &wl->ptable[PART_BOOT]);
	if (ret < 0)
		goto out;

	/* Disable interrupts */
	ret = FUNC5(wl, REG_INTERRUPT_MASK, WL1271_ACX_INTR_ALL);
	if (ret < 0)
		goto out;

	ret = FUNC1(wl);

out:
	return ret;
}