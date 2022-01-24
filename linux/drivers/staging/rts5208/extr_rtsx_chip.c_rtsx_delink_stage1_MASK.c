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
struct rtsx_chip {int auto_delink_cnt; scalar_t__ card_exist; scalar_t__ asic_code; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANGE_LINK_STATE ; 
 scalar_t__ FUNC0 (struct rtsx_chip*,int) ; 
 int /*<<< orphan*/  HOST_SLEEP_STATE ; 
 int /*<<< orphan*/  RTSX_STAT_DELINK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_chip*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC7(struct rtsx_chip *chip, int enter_L1,
			       int stage3_cnt)
{
	u8 val;

	FUNC5(chip, RTSX_STAT_DELINK);

	if (chip->asic_code && FUNC0(chip, 0x5208))
		FUNC4(chip, 0x1C, 2);

	if (chip->card_exist)
		FUNC1(FUNC2(chip), "False card inserted, do force delink\n");
	else
		FUNC1(FUNC2(chip), "No card inserted, do delink\n");

	if (enter_L1)
		FUNC6(chip, HOST_SLEEP_STATE, 0x03, 1);

	if (chip->card_exist)
		val = 0x02;
	else
		val = 0x0A;

	FUNC6(chip, CHANGE_LINK_STATE, val, val);

	if (enter_L1)
		FUNC3(chip);

	if (chip->card_exist)
		chip->auto_delink_cnt = stage3_cnt + 1;
}