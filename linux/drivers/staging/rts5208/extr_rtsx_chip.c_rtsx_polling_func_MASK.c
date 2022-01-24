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
typedef  int /*<<< orphan*/  u8 ;
struct rtsx_chip {int /*<<< orphan*/  sd_int; int /*<<< orphan*/  sd_io; scalar_t__ polling_config; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTSX_STAT_DELINK ; 
#define  RTSX_STAT_IDLE 129 
#define  RTSX_STAT_RUN 128 
 int /*<<< orphan*/  RTSX_STAT_SS ; 
 int /*<<< orphan*/  RTSX_STAT_SUSPEND ; 
 int /*<<< orphan*/  SD_MS_2LUN ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*) ; 
 scalar_t__ FUNC3 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtsx_chip*) ; 
 int FUNC6 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC8 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC9 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC10 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC11 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC12 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC13 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC14 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC15 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct rtsx_chip*) ; 

void FUNC17(struct rtsx_chip *chip)
{
	if (FUNC3(chip, RTSX_STAT_SUSPEND))
		return;

	if (FUNC3(chip, RTSX_STAT_DELINK))
		goto delink_stage;

	if (chip->polling_config) {
		u8 val;

		FUNC15(chip, 0, &val);
	}

	if (FUNC3(chip, RTSX_STAT_SS))
		return;

	FUNC12(chip);

	FUNC13(chip);

	FUNC7(chip);

	FUNC14(chip);

	FUNC10(chip);

	FUNC11(chip);

	switch (FUNC6(chip)) {
	case RTSX_STAT_RUN:
#if !defined(LED_AUTO_BLINK) && defined(REGULAR_BLINK)
		rtsx_blink_led(chip);
#endif
		FUNC1(chip);
		break;

	case RTSX_STAT_IDLE:
		if (chip->sd_io && !chip->sd_int)
			FUNC16(chip);

		FUNC5(chip);
		break;

	default:
		break;
	}

	if (FUNC0(chip, SD_MS_2LUN))
		FUNC9(chip);
	else
		FUNC8(chip);

delink_stage:
	FUNC4(chip);
}