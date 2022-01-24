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
struct watchdog_device {int /*<<< orphan*/  timeout; } ;
struct iTCO_wdt_private {int iTCO_version; int /*<<< orphan*/  io_lock; int /*<<< orphan*/  no_reboot_priv; scalar_t__ (* update_no_reboot_bit ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  smi_res; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct iTCO_wdt_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct iTCO_wdt_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int) ; 
 struct iTCO_wdt_private* FUNC10 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC11(struct watchdog_device *wd_dev)
{
	struct iTCO_wdt_private *p = FUNC10(wd_dev);
	unsigned int val;

	FUNC7(&p->io_lock);

	FUNC2(p->smi_res, wd_dev->timeout);

	/* disable chipset's NO_REBOOT bit */
	if (p->update_no_reboot_bit(p->no_reboot_priv, false)) {
		FUNC8(&p->io_lock);
		FUNC6("failed to reset NO_REBOOT flag, reboot disabled by hardware/BIOS\n");
		return -EIO;
	}

	/* Force the timer to its reload value by writing to the TCO_RLD
	   register */
	if (p->iTCO_version >= 2)
		FUNC5(0x01, FUNC1(p));
	else if (p->iTCO_version == 1)
		FUNC4(0x01, FUNC1(p));

	/* Bit 11: TCO Timer Halt -> 0 = The TCO timer is enabled to count */
	val = FUNC3(FUNC0(p));
	val &= 0xf7ff;
	FUNC5(val, FUNC0(p));
	val = FUNC3(FUNC0(p));
	FUNC8(&p->io_lock);

	if (val & 0x0800)
		return -1;
	return 0;
}