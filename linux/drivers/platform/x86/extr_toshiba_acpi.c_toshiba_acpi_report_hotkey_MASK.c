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
struct toshiba_acpi_dev {int /*<<< orphan*/  hotkey_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void FUNC2(struct toshiba_acpi_dev *dev,
				       int scancode)
{
	if (scancode == 0x100)
		return;

	/* Act on key press; ignore key release */
	if (scancode & 0x80)
		return;

	if (!FUNC1(dev->hotkey_dev, scancode, 1, true))
		FUNC0("Unknown key %x\n", scancode);
}