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

/* Variables and functions */
 int /*<<< orphan*/  IOP_WDTCR_EN ; 
 int /*<<< orphan*/  IOP_WDTCR_EN_ARM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wdt_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void)
{
	/* Arm and enable the Timer to starting counting down from 0xFFFF.FFFF
	 * Takes approx. 10.7s to timeout
	 */
	FUNC0(&wdt_lock);
	FUNC2(IOP_WDTCR_EN_ARM);
	FUNC2(IOP_WDTCR_EN);
	FUNC1(&wdt_lock);
}