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
struct scsi_cmnd {int* cmnd; } ;
struct ms_info {int /*<<< orphan*/  raw_model_name; int /*<<< orphan*/  raw_sys_info; } ;
struct rtsx_chip {struct ms_info ms_card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ms_info*) ; 
 scalar_t__ FUNC1 (struct ms_info*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ MS_CARD ; 
 unsigned int FUNC2 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_INVALID_CMD_FIELD ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_LUN_NOT_SUPPORT ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_NOT_PRESENT ; 
 int STATUS_SUCCESS ; 
 int TRANSPORT_ERROR ; 
 int TRANSPORT_FAILED ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*,unsigned int) ; 
 scalar_t__ FUNC4 (struct rtsx_chip*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int* FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int*,unsigned int,struct scsi_cmnd*) ; 
 scalar_t__ FUNC9 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC10 (struct scsi_cmnd*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct rtsx_chip*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
	struct ms_info *ms_card = &chip->ms_card;
	unsigned int lun = FUNC2(srb);
	u8 dev_info_id, data_len;
	u8 *buf;
	unsigned int buf_len;
	int i;

	if (!FUNC3(chip, lun)) {
		FUNC11(chip, lun, SENSE_TYPE_MEDIA_NOT_PRESENT);
		return TRANSPORT_FAILED;
	}
	if (FUNC4(chip, lun) != MS_CARD) {
		FUNC11(chip, lun, SENSE_TYPE_MEDIA_LUN_NOT_SUPPORT);
		return TRANSPORT_FAILED;
	}

	if ((srb->cmnd[2] != 0xB0) || (srb->cmnd[4] != 0x4D) ||
	    (srb->cmnd[5] != 0x53) || (srb->cmnd[6] != 0x49) ||
	    (srb->cmnd[7] != 0x44)) {
		FUNC11(chip, lun, SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
		return TRANSPORT_FAILED;
	}

	dev_info_id = srb->cmnd[3];
	if ((FUNC1(ms_card) && (dev_info_id == 0x10)) ||
	    (!FUNC1(ms_card) && (dev_info_id == 0x13)) ||
	    !FUNC0(ms_card)) {
		FUNC11(chip, lun, SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
		return TRANSPORT_FAILED;
	}

	if (dev_info_id == 0x15) {
		buf_len = 0x3A;
		data_len = 0x3A;
	} else {
		buf_len = 0x6A;
		data_len = 0x6A;
	}

	buf = FUNC6(buf_len, GFP_KERNEL);
	if (!buf)
		return TRANSPORT_ERROR;

	i = 0;
	/*  GET Memory Stick Media Information Response Header */
	buf[i++] = 0x00;		/* Data length MSB */
	buf[i++] = data_len;		/* Data length LSB */
	/* Device Information Type Code */
	if (FUNC1(ms_card))
		buf[i++] = 0x03;
	else
		buf[i++] = 0x02;

	/* SGM bit */
	buf[i++] = 0x01;
	/* Reserved */
	buf[i++] = 0x00;
	buf[i++] = 0x00;
	buf[i++] = 0x00;
	/* Number of Device Information */
	buf[i++] = 0x01;

	/*  Device Information Body */

	/* Device Information ID Number */
	buf[i++] = dev_info_id;
	/* Device Information Length */
	if (dev_info_id == 0x15)
		data_len = 0x31;
	else
		data_len = 0x61;

	buf[i++] = 0x00;		/* Data length MSB */
	buf[i++] = data_len;		/* Data length LSB */
	/* Valid Bit */
	buf[i++] = 0x80;
	if ((dev_info_id == 0x10) || (dev_info_id == 0x13)) {
		/* System Information */
		FUNC7(buf + i, ms_card->raw_sys_info, 96);
	} else {
		/* Model Name */
		FUNC7(buf + i, ms_card->raw_model_name, 48);
	}

	FUNC8(buf, buf_len, srb);

	if (dev_info_id == 0x15)
		FUNC10(srb, FUNC9(srb) - 0x3C);
	else
		FUNC10(srb, FUNC9(srb) - 0x6C);

	FUNC5(buf);
	return STATUS_SUCCESS;
}