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
 unsigned int ENABLE_WD2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int FUNC4 () ; 
 int /*<<< orphan*/  zf_port_lock ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  zf_timer ; 

__attribute__((used)) static void FUNC6(void)
{
	unsigned int ctrl_reg = 0;
	unsigned long flags;

	/* stop internal ping */
	FUNC0(&zf_timer);

	FUNC2(&zf_port_lock, flags);
	/* stop watchdog timer */
	ctrl_reg = FUNC4();
	ctrl_reg |= (ENABLE_WD1|ENABLE_WD2);	/* disable wd1 and wd2 */
	ctrl_reg &= ~(ENABLE_WD1|ENABLE_WD2);
	FUNC5(ctrl_reg);
	FUNC3(&zf_port_lock, flags);

	FUNC1("Watchdog timer is now disabled\n");
}