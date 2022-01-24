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
struct rtsx_chip {scalar_t__ asic_code; scalar_t__ aspm_enabled; scalar_t__ dynamic_aspm; scalar_t__ aspm_l0s_l1_en; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASPM_FORCE_CTL ; 
 scalar_t__ FUNC0 (struct rtsx_chip*,int) ; 
 int /*<<< orphan*/  LCTLR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_chip*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtsx_chip*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

void FUNC8(struct rtsx_chip *chip)
{
	if (FUNC0(chip, 0x5208))
		FUNC3(chip);

	if (chip->aspm_l0s_l1_en && chip->dynamic_aspm && chip->aspm_enabled) {
		FUNC1(FUNC2(chip), "Try to disable ASPM\n");
		chip->aspm_enabled = 0;

		if (chip->asic_code && FUNC0(chip, 0x5208))
			FUNC5(chip, 0x07, 0x0129);
		if (FUNC0(chip, 0x5208))
			FUNC6(chip, ASPM_FORCE_CTL,
					    0xF3, 0x30);
		else
			FUNC4(chip, LCTLR, 0x00);

		FUNC7(1);
	}
}