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
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  sioaddr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F71808FG_FLAG_WD_EN ; 
 int /*<<< orphan*/  F71808FG_REG_WDT_CONF ; 
 int /*<<< orphan*/  SIO_F71808FG_LD_WDT ; 
 int /*<<< orphan*/  SIO_REG_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ watchdog ; 

__attribute__((used)) static bool FUNC7(void)
{
	/*
	 * if we fail to determine the watchdog's status assume it to be
	 * running to be on the safe side
	 */
	bool is_running = true;

	FUNC1(&watchdog.lock);
	if (FUNC3(watchdog.sioaddr))
		goto exit_unlock;
	FUNC6(watchdog.sioaddr, SIO_F71808FG_LD_WDT);

	is_running = (FUNC5(watchdog.sioaddr, SIO_REG_ENABLE) & FUNC0(0))
		&& (FUNC5(watchdog.sioaddr, F71808FG_REG_WDT_CONF)
			& FUNC0(F71808FG_FLAG_WD_EN));

	FUNC4(watchdog.sioaddr);

exit_unlock:
	FUNC2(&watchdog.lock);
	return is_running;
}