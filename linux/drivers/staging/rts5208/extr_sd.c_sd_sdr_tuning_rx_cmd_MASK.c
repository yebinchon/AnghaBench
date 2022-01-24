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
struct rtsx_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SD_BUS_WIDTH_4 ; 
 int /*<<< orphan*/  SD_TM_AUTO_TUNING ; 
 int SEND_TUNING_PATTERN ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  TUNE_RX ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_chip*) ; 
 int FUNC1 (struct rtsx_chip*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rtsx_chip*,int /*<<< orphan*/ ,int*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*) ; 

__attribute__((used)) static int FUNC4(struct rtsx_chip *chip, u8 sample_point)
{
	int retval;
	u8 cmd[5];

	retval = FUNC1(chip, sample_point, TUNE_RX);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	cmd[0] = 0x40 | SEND_TUNING_PATTERN;
	cmd[1] = 0;
	cmd[2] = 0;
	cmd[3] = 0;
	cmd[4] = 0;

	retval = FUNC2(chip, SD_TM_AUTO_TUNING, cmd, 5, 0x40, 1,
			      SD_BUS_WIDTH_4, NULL, 0, 100);
	if (retval != STATUS_SUCCESS) {
		(void)FUNC3(chip);

		FUNC0(chip);
		return STATUS_FAIL;
	}

	return STATUS_SUCCESS;
}