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
typedef  int u32 ;
struct sd_info {int pre_cmd_err; int last_rsp_type; int sd_lock_status; int sd_addr; int /*<<< orphan*/ * rsp; int /*<<< orphan*/  sd_pass_thru_en; } ;
struct scsi_cmnd {int* cmnd; } ;
struct rtsx_chip {int card_ready; struct sd_info sd_card; } ;

/* Variables and functions */
 int APP_CMD ; 
 scalar_t__ FUNC0 (struct sd_info*) ; 
 scalar_t__ FUNC1 (struct sd_info*) ; 
 scalar_t__ FUNC2 (struct sd_info*) ; 
 int /*<<< orphan*/  REG_SD_CFG1 ; 
 unsigned int FUNC3 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  SD_BUS_WIDTH_4 ; 
 int /*<<< orphan*/  SD_BUS_WIDTH_8 ; 
 int SD_CARD ; 
 int SD_LOCK_1BIT_MODE ; 
 int SD_RSP_TYPE_R1 ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_CHANGE ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_INVALID_CMD_FIELD ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_NOT_PRESENT ; 
 int /*<<< orphan*/  SENSE_TYPE_NO_SENSE ; 
 int STATUS_SUCCESS ; 
 int TRANSPORT_FAILED ; 
 int TRANSPORT_GOOD ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_chip*) ; 
 int FUNC5 (struct rtsx_chip*,int,int,int,int /*<<< orphan*/ *,int,int) ; 
 int FUNC6 (struct scsi_cmnd*,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtsx_chip*) ; 
 int FUNC8 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct rtsx_chip*,int) ; 
 int FUNC11 (struct rtsx_chip*) ; 
 int FUNC12 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC13 (struct rtsx_chip*,unsigned int,int /*<<< orphan*/ ) ; 

int FUNC14(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
	struct sd_info *sd_card = &chip->sd_card;
	unsigned int lun = FUNC3(srb);
	int retval, rsp_len;
	u8 cmd_idx, rsp_type;
	bool standby = false, acmd = false;
	u32 arg;

	if (!sd_card->sd_pass_thru_en) {
		FUNC13(chip, lun, SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
		return TRANSPORT_FAILED;
	}

	retval = FUNC11(chip);
	if (retval != STATUS_SUCCESS)
		return TRANSPORT_FAILED;

	if (sd_card->pre_cmd_err) {
		sd_card->pre_cmd_err = 0;
		FUNC13(chip, lun, SENSE_TYPE_MEDIA_CHANGE);
		return TRANSPORT_FAILED;
	}

	cmd_idx = srb->cmnd[2] & 0x3F;
	if (srb->cmnd[1] & 0x02)
		standby = true;

	if (srb->cmnd[1] & 0x01)
		acmd = true;

	arg = ((u32)srb->cmnd[3] << 24) | ((u32)srb->cmnd[4] << 16) |
		((u32)srb->cmnd[5] << 8) | srb->cmnd[6];

	retval = FUNC6(srb, &rsp_type, &rsp_len);
	if (retval != STATUS_SUCCESS) {
		FUNC13(chip, lun, SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
		return TRANSPORT_FAILED;
	}
	sd_card->last_rsp_type = rsp_type;

	retval = FUNC11(chip);
	if (retval != STATUS_SUCCESS)
		return TRANSPORT_FAILED;

#ifdef SUPPORT_SD_LOCK
	if ((sd_card->sd_lock_status & SD_LOCK_1BIT_MODE) == 0) {
		if (CHK_MMC_8BIT(sd_card)) {
			retval = rtsx_write_register(chip, REG_SD_CFG1, 0x03,
						     SD_BUS_WIDTH_8);
			if (retval != STATUS_SUCCESS)
				return TRANSPORT_FAILED;

		} else if (CHK_SD(sd_card) || CHK_MMC_4BIT(sd_card)) {
			retval = rtsx_write_register(chip, REG_SD_CFG1, 0x03,
						     SD_BUS_WIDTH_4);
			if (retval != STATUS_SUCCESS)
				return TRANSPORT_FAILED;
		}
	}
#else
	retval = FUNC8(chip, REG_SD_CFG1, 0x03, SD_BUS_WIDTH_4);
	if (retval != STATUS_SUCCESS)
		return TRANSPORT_FAILED;
#endif

	if (standby) {
		retval = FUNC10(chip, 0);
		if (retval != STATUS_SUCCESS)
			goto sd_execute_cmd_failed;
	}

	if (acmd) {
		retval = FUNC5(chip, APP_CMD,
						 sd_card->sd_addr,
						 SD_RSP_TYPE_R1, NULL, 0,
						 false);
		if (retval != STATUS_SUCCESS)
			goto sd_execute_cmd_failed;
	}

	retval = FUNC5(chip, cmd_idx, arg, rsp_type,
					 sd_card->rsp, rsp_len, false);
	if (retval != STATUS_SUCCESS)
		goto sd_execute_cmd_failed;

	if (standby) {
		retval = FUNC10(chip, 1);
		if (retval != STATUS_SUCCESS)
			goto sd_execute_cmd_failed;
	}

#ifdef SUPPORT_SD_LOCK
	retval = sd_update_lock_status(chip);
	if (retval != STATUS_SUCCESS)
		goto sd_execute_cmd_failed;
#endif

	FUNC9(srb, 0);
	return TRANSPORT_GOOD;

sd_execute_cmd_failed:
	sd_card->pre_cmd_err = 1;
	FUNC13(chip, lun, SENSE_TYPE_NO_SENSE);
	FUNC7(chip);
	FUNC4(chip);
	if (!(chip->card_ready & SD_CARD))
		FUNC13(chip, lun, SENSE_TYPE_MEDIA_NOT_PRESENT);

	return TRANSPORT_FAILED;
}