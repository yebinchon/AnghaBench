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
typedef  int u16 ;
struct rtsx_chip {int aspm_l0s_l1_en; int aspm_enabled; int* aspm_level; scalar_t__ asic_code; scalar_t__ dynamic_aspm; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASPM_FORCE_CTL ; 
 scalar_t__ FUNC0 (struct rtsx_chip*,int) ; 
 scalar_t__ FUNC1 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  LCTLR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_chip*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtsx_chip*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rtsx_chip*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int) ; 

void FUNC8(struct rtsx_chip *chip)
{
	if (chip->aspm_l0s_l1_en && chip->dynamic_aspm && !chip->aspm_enabled) {
		FUNC2(FUNC3(chip), "Try to enable ASPM\n");
		chip->aspm_enabled = 1;

		if (chip->asic_code && FUNC0(chip, 0x5208))
			FUNC6(chip, 0x07, 0);
		if (FUNC0(chip, 0x5208)) {
			FUNC7(chip, ASPM_FORCE_CTL, 0xF3,
					    0x30 | chip->aspm_level[0]);
		} else {
			FUNC5(chip, LCTLR,
					       chip->aspm_l0s_l1_en);
		}

		if (FUNC1(chip)) {
			u16 val = chip->aspm_l0s_l1_en | 0x0100;

			FUNC4(chip, FUNC0(chip, 0x5288) ? 2 : 1,
					  0xC0, 0xFFF, val);
		}
	}
}