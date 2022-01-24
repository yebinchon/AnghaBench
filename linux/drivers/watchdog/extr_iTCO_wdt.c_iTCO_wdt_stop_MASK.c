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
struct watchdog_device {int dummy; } ;
struct iTCO_wdt_private {int /*<<< orphan*/  io_lock; int /*<<< orphan*/  no_reboot_priv; int /*<<< orphan*/  (* update_no_reboot_bit ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  smi_res; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iTCO_wdt_private*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 struct iTCO_wdt_private* FUNC7 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC8(struct watchdog_device *wd_dev)
{
	struct iTCO_wdt_private *p = FUNC7(wd_dev);
	unsigned int val;

	FUNC4(&p->io_lock);

	FUNC1(p->smi_res);

	/* Bit 11: TCO Timer Halt -> 1 = The TCO timer is disabled */
	val = FUNC2(FUNC0(p));
	val |= 0x0800;
	FUNC3(val, FUNC0(p));
	val = FUNC2(FUNC0(p));

	/* Set the NO_REBOOT bit to prevent later reboots, just for sure */
	p->update_no_reboot_bit(p->no_reboot_priv, true);

	FUNC5(&p->io_lock);

	if ((val & 0x0800) == 0)
		return -1;
	return 0;
}