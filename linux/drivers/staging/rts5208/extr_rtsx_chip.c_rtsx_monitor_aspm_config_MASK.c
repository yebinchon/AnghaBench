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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct rtsx_chip {int* aspm_level; int aspm_l0s_l1_en; int aspm_enabled; scalar_t__ sdio_aspm; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASPM_FORCE_CTL ; 
 scalar_t__ FUNC0 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  LCTLR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_chip*,int,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtsx_chip*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC7(struct rtsx_chip *chip)
{
	bool reg_changed, maybe_support_aspm;
	u32 tmp = 0;
	u8 reg0 = 0, reg1 = 0;

	maybe_support_aspm = false;
	reg_changed = false;
	FUNC5(chip, LCTLR, &reg0);
	if (chip->aspm_level[0] != reg0) {
		reg_changed = true;
		chip->aspm_level[0] = reg0;
	}
	if (FUNC0(chip) && !FUNC1(chip)) {
		FUNC4(chip, 1, 0xC0, &tmp);
		reg1 = (u8)tmp;
		if (chip->aspm_level[1] != reg1) {
			reg_changed = true;
			chip->aspm_level[1] = reg1;
		}

		if ((reg0 & 0x03) && (reg1 & 0x03))
			maybe_support_aspm = true;

	} else {
		if (reg0 & 0x03)
			maybe_support_aspm = true;
	}

	if (reg_changed) {
		if (maybe_support_aspm)
			chip->aspm_l0s_l1_en = 0x03;

		FUNC2(FUNC3(chip), "aspm_level[0] = 0x%02x, aspm_level[1] = 0x%02x\n",
			chip->aspm_level[0], chip->aspm_level[1]);

		if (chip->aspm_l0s_l1_en) {
			chip->aspm_enabled = 1;
		} else {
			chip->aspm_enabled = 0;
			chip->sdio_aspm = 0;
		}
		FUNC6(chip, ASPM_FORCE_CTL, 0xFF,
				    0x30 | chip->aspm_level[0] |
				    (chip->aspm_level[1] << 2));
	}
}