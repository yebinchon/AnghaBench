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
typedef  int /*<<< orphan*/  u32 ;
struct rtsx_chip {int /*<<< orphan*/  phy_debug_mode; scalar_t__ auto_delink_en; scalar_t__ power_down_in_ss; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_INT ; 
 int /*<<< orphan*/  CHANGE_LINK_STATE ; 
 scalar_t__ FUNC0 (struct rtsx_chip*,int) ; 
 scalar_t__ FUNC1 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  HOST_SLEEP_STATE ; 
 int /*<<< orphan*/  IRQSTAT0 ; 
 int LINK_RDY_INT ; 
 int OC_PDCTL ; 
 int /*<<< orphan*/  RTSX_BIER ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  RTSX_STAT_SS ; 
 int SSC_PDCTL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtsx_chip*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC8 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct rtsx_chip*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC13(struct rtsx_chip *chip)
{
	FUNC3(FUNC4(chip), "Enter Selective Suspend State!\n");

	FUNC11(chip, IRQSTAT0, LINK_RDY_INT, LINK_RDY_INT);

	if (chip->power_down_in_ss) {
		FUNC7(chip);
		FUNC6(chip, SSC_PDCTL | OC_PDCTL);
	}

	if (FUNC1(chip))
		FUNC10(chip, FUNC0(chip, 0x5288) ? 2 : 1,
				  0xC0, 0xFF00, 0x0100);

	if (chip->auto_delink_en) {
		FUNC11(chip, HOST_SLEEP_STATE, 0x01, 0x01);
	} else {
		if (!chip->phy_debug_mode) {
			u32 tmp;

			tmp = FUNC8(chip, RTSX_BIER);
			tmp |= CARD_INT;
			FUNC12(chip, RTSX_BIER, tmp);
		}

		FUNC11(chip, CHANGE_LINK_STATE, 0x02, 0);
	}

	FUNC5(chip);

	FUNC2(chip);
	FUNC9(chip, RTSX_STAT_SS);
}