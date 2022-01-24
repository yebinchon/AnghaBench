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
typedef  scalar_t__ u8 ;
struct ms_info {int /*<<< orphan*/  ms_type; } ;
struct rtsx_chip {struct ms_info ms_card; } ;

/* Variables and functions */
 int /*<<< orphan*/  GET_INT ; 
 int /*<<< orphan*/  MS_8BIT ; 
 int MS_BUS_WIDTH_8 ; 
 int /*<<< orphan*/  MS_CFG ; 
 int MS_MAX_RETRY_COUNT ; 
 int /*<<< orphan*/  MS_TM_READ_BYTES ; 
 int /*<<< orphan*/  NO_WAIT_INT ; 
 scalar_t__ PARALLEL_8BIT_IF ; 
 int SAMPLE_TIME_FALLING ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  WRITE_REG ; 
 int FUNC0 (struct rtsx_chip*) ; 
 int FUNC1 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int FUNC3 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC4(struct rtsx_chip *chip)
{
	struct ms_info *ms_card = &chip->ms_card;
	int retval, i;
	u8 data[2];

	data[0] = PARALLEL_8BIT_IF;
	data[1] = 0;
	for (i = 0; i < MS_MAX_RETRY_COUNT; i++) {
		retval = FUNC2(chip, WRITE_REG, 1,
					NO_WAIT_INT, data, 2);
		if (retval == STATUS_SUCCESS)
			break;
	}
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	retval = FUNC3(chip, MS_CFG, 0x98,
				     MS_BUS_WIDTH_8 | SAMPLE_TIME_FALLING);
	if (retval)
		return retval;

	ms_card->ms_type |= MS_8BIT;
	retval = FUNC0(chip);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	for (i = 0; i < MS_MAX_RETRY_COUNT; i++) {
		retval = FUNC1(chip, MS_TM_READ_BYTES, GET_INT,
					 1, NO_WAIT_INT);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;
	}

	return STATUS_SUCCESS;
}