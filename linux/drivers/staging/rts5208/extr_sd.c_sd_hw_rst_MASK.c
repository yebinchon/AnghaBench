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
struct sd_info {int pre_cmd_err; int /*<<< orphan*/  sd_lock_status; int /*<<< orphan*/  sd_pass_thru_en; } ;
struct scsi_cmnd {int* cmnd; } ;
struct rtsx_chip {struct sd_info sd_card; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  SD_SDR_RST ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_CHANGE ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_INVALID_CMD_FIELD ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_NOT_PRESENT ; 
 int STATUS_SUCCESS ; 
 int TRANSPORT_FAILED ; 
 int TRANSPORT_GOOD ; 
 int FUNC1 (struct rtsx_chip*) ; 
 int FUNC2 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_chip*,unsigned int,int /*<<< orphan*/ ) ; 

int FUNC5(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
	struct sd_info *sd_card = &chip->sd_card;
	unsigned int lun = FUNC0(srb);
	int retval;

	if (!sd_card->sd_pass_thru_en) {
		FUNC4(chip, lun, SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
		return TRANSPORT_FAILED;
	}

	if (sd_card->pre_cmd_err) {
		sd_card->pre_cmd_err = 0;
		FUNC4(chip, lun, SENSE_TYPE_MEDIA_CHANGE);
		return TRANSPORT_FAILED;
	}

	if ((srb->cmnd[2] != 0x53) || (srb->cmnd[3] != 0x44) ||
	    (srb->cmnd[4] != 0x20) || (srb->cmnd[5] != 0x43) ||
	    (srb->cmnd[6] != 0x61) || (srb->cmnd[7] != 0x72) ||
	    (srb->cmnd[8] != 0x64)) {
		FUNC4(chip, lun, SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
		return TRANSPORT_FAILED;
	}

	switch (srb->cmnd[1] & 0x0F) {
	case 0:
#ifdef SUPPORT_SD_LOCK
		if (srb->cmnd[9] == 0x64)
			sd_card->sd_lock_status |= SD_SDR_RST;
#endif
		retval = FUNC2(chip);
		if (retval != STATUS_SUCCESS) {
#ifdef SUPPORT_SD_LOCK
			sd_card->sd_lock_status &= ~SD_SDR_RST;
#endif
			FUNC4(chip, lun, SENSE_TYPE_MEDIA_NOT_PRESENT);
			sd_card->pre_cmd_err = 1;
			return TRANSPORT_FAILED;
		}
#ifdef SUPPORT_SD_LOCK
		sd_card->sd_lock_status &= ~SD_SDR_RST;
#endif
		break;

	case 1:
		retval = FUNC1(chip);
		if (retval != STATUS_SUCCESS) {
			FUNC4(chip, lun, SENSE_TYPE_MEDIA_NOT_PRESENT);
			sd_card->pre_cmd_err = 1;
			return TRANSPORT_FAILED;
		}
		break;

	default:
		FUNC4(chip, lun, SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
		return TRANSPORT_FAILED;
	}

	FUNC3(srb, 0);
	return TRANSPORT_GOOD;
}