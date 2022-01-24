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
typedef  int u16 ;
struct scsi_cmnd {int dummy; } ;
struct ms_info {int pro_under_formatting; int /*<<< orphan*/  format_status; scalar_t__ progress; } ;
struct rtsx_chip {struct ms_info ms_card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FORMAT_IN_PROGRESS ; 
 int /*<<< orphan*/  FORMAT_SUCCESS ; 
 int MS_INT_BREQ ; 
 int MS_INT_CED ; 
 int MS_INT_CMDNK ; 
 int MS_INT_ERR ; 
 int MS_MAX_RETRY_COUNT ; 
 int /*<<< orphan*/  MS_TRANS_CFG ; 
 int /*<<< orphan*/  NO_WAIT_INT ; 
 int /*<<< orphan*/  PRO_FORMAT ; 
 int /*<<< orphan*/  PRO_WRITE_REG ; 
 int /*<<< orphan*/  Pro_TPCParm ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  SENSE_TYPE_NO_SENSE ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct rtsx_chip*,int,int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct rtsx_chip*) ; 
 int FUNC4 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC5 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct rtsx_chip*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(struct scsi_cmnd *srb, struct rtsx_chip *chip,
		 int short_data_len, bool quick_format)
{
	struct ms_info *ms_card = &chip->ms_card;
	int retval, i;
	u8 buf[8], tmp;
	u16 para;

	retval = FUNC3(chip);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	retval = FUNC2(chip, 0x00, 0x00, Pro_TPCParm, 0x01);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	FUNC1(buf, 0, 2);
	switch (short_data_len) {
	case 32:
		buf[0] = 0;
		break;
	case 64:
		buf[0] = 1;
		break;
	case 128:
		buf[0] = 2;
		break;
	case 256:
	default:
		buf[0] = 3;
		break;
	}

	for (i = 0; i < MS_MAX_RETRY_COUNT; i++) {
		retval = FUNC4(chip, PRO_WRITE_REG, 1,
					NO_WAIT_INT, buf, 2);
		if (retval == STATUS_SUCCESS)
			break;
	}
	if (i == MS_MAX_RETRY_COUNT)
		return STATUS_FAIL;

	if (quick_format)
		para = 0x0000;
	else
		para = 0x0001;

	retval = FUNC5(chip, 0, para, PRO_FORMAT);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	retval = FUNC6(chip, MS_TRANS_CFG, &tmp);
	if (retval)
		return retval;

	if (tmp & (MS_INT_CMDNK | MS_INT_ERR))
		return STATUS_FAIL;

	if ((tmp & (MS_INT_BREQ | MS_INT_CED)) == MS_INT_BREQ) {
		ms_card->pro_under_formatting = 1;
		ms_card->progress = 0;
		ms_card->format_status = FORMAT_IN_PROGRESS;
		return STATUS_SUCCESS;
	}

	if (tmp & MS_INT_CED) {
		ms_card->pro_under_formatting = 0;
		ms_card->progress = 0;
		ms_card->format_status = FORMAT_SUCCESS;
		FUNC7(chip, FUNC0(srb), SENSE_TYPE_NO_SENSE);
		return STATUS_SUCCESS;
	}

	return STATUS_FAIL;
}