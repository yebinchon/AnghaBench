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
struct timer_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COUNTER_2 ; 
 unsigned int RESET_WD1 ; 
 scalar_t__ ZF_HW_TIMEO ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ next_heartbeat ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 unsigned int FUNC6 () ; 
 int /*<<< orphan*/  zf_port_lock ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  zf_timer ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(struct timer_list *unused)
{
	unsigned int ctrl_reg = 0;
	unsigned long flags;

	FUNC8(COUNTER_2, 0xff);

	if (FUNC5(jiffies, next_heartbeat)) {
		FUNC0("time_before: %ld\n", next_heartbeat - jiffies);
		/*
		 * reset event is activated by transition from 0 to 1 on
		 * RESET_WD1 bit and we assume that it is already zero...
		 */

		FUNC3(&zf_port_lock, flags);
		ctrl_reg = FUNC6();
		ctrl_reg |= RESET_WD1;
		FUNC7(ctrl_reg);

		/* ...and nothing changes until here */
		ctrl_reg &= ~(RESET_WD1);
		FUNC7(ctrl_reg);
		FUNC4(&zf_port_lock, flags);

		FUNC1(&zf_timer, jiffies + ZF_HW_TIMEO);
	} else
		FUNC2("I will reset your machine\n");
}