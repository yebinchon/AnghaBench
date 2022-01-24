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
 unsigned int ENABLE_WD1 ; 
 int /*<<< orphan*/  PULSE_LEN ; 
 int /*<<< orphan*/  WD1 ; 
 int /*<<< orphan*/  ZF_CTIMEOUT ; 
 scalar_t__ ZF_HW_TIMEO ; 
 scalar_t__ ZF_USER_TIMEO ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ next_heartbeat ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int zf_action ; 
 unsigned int FUNC4 () ; 
 int /*<<< orphan*/  zf_port_lock ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zf_timer ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(void)
{
	unsigned int ctrl_reg = 0;
	unsigned long flags;

	FUNC2(&zf_port_lock, flags);

	FUNC7(PULSE_LEN, 0xff);

	FUNC6(ZF_CTIMEOUT, WD1);

	/* user land ping */
	next_heartbeat = jiffies + ZF_USER_TIMEO;

	/* start the timer for internal ping */
	FUNC0(&zf_timer, jiffies + ZF_HW_TIMEO);

	/* start watchdog timer */
	ctrl_reg = FUNC4();
	ctrl_reg |= (ENABLE_WD1|zf_action);
	FUNC5(ctrl_reg);
	FUNC3(&zf_port_lock, flags);

	FUNC1("Watchdog timer is now enabled\n");
}