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
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  sioaddr; int /*<<< orphan*/  timer_val; scalar_t__ minutes_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  F71808FG_FLAG_WD_UNIT ; 
 int /*<<< orphan*/  F71808FG_REG_WDT_CONF ; 
 int /*<<< orphan*/  F71808FG_REG_WD_TIME ; 
 int /*<<< orphan*/  SIO_F71808FG_LD_WDT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ watchdog ; 

__attribute__((used)) static int FUNC8(void)
{
	int err = 0;

	FUNC0(&watchdog.lock);
	err = FUNC3(watchdog.sioaddr);
	if (err)
		goto exit_unlock;
	FUNC6(watchdog.sioaddr, SIO_F71808FG_LD_WDT);

	if (watchdog.minutes_mode)
		/* select minutes for timer units */
		FUNC7(watchdog.sioaddr, F71808FG_REG_WDT_CONF,
				F71808FG_FLAG_WD_UNIT);
	else
		/* select seconds for timer units */
		FUNC2(watchdog.sioaddr, F71808FG_REG_WDT_CONF,
				F71808FG_FLAG_WD_UNIT);

	/* Set timer value */
	FUNC5(watchdog.sioaddr, F71808FG_REG_WD_TIME,
			   watchdog.timer_val);

	FUNC4(watchdog.sioaddr);

exit_unlock:
	FUNC1(&watchdog.lock);
	return err;
}