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
struct watchdog_device {int dummy; } ;
struct sp5100_tco {int /*<<< orphan*/  tcobase; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SP5100_WDT_START_STOP_BIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct sp5100_tco* FUNC2 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct watchdog_device *wdd)
{
	struct sp5100_tco *tco = FUNC2(wdd);
	u32 val;

	val = FUNC1(FUNC0(tco->tcobase));
	val &= ~SP5100_WDT_START_STOP_BIT;
	FUNC3(val, FUNC0(tco->tcobase));

	return 0;
}