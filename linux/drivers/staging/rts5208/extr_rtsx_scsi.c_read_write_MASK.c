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
typedef  int u32 ;
typedef  int u16 ;
struct sd_info {int sd_lock_status; scalar_t__ sd_erase_status; } ;
struct scsi_cmnd {int* cmnd; scalar_t__ sc_data_direction; } ;
struct rtsx_chip {int* rw_fail_cnt; int need_release; int* lun2card; int /*<<< orphan*/  lun_mc; scalar_t__ ss_en; struct sd_info sd_card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ DMA_FROM_DEVICE ; 
 scalar_t__ DMA_TO_DEVICE ; 
 int PP_READ10 ; 
 int PP_WRITE10 ; 
 int READ_10 ; 
 int READ_6 ; 
 int /*<<< orphan*/  RTSX_STAT_RUN ; 
 scalar_t__ RTSX_STAT_SS ; 
 int SCSI_APP_CMD ; 
 unsigned int FUNC1 (struct scsi_cmnd*) ; 
 scalar_t__ SD_CARD ; 
 int SD_LOCKED ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_CHANGE ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_INVALID_CMD_FIELD ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_LBA_OVER_RANGE ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_NOT_PRESENT ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_READ_FORBIDDEN ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_UNRECOVER_READ_ERR ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_WRITE_ERR ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_WRITE_PROTECT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int STATUS_SUCCESS ; 
 int TRANSPORT_FAILED ; 
 int TRANSPORT_GOOD ; 
 int VENDOR_CMND ; 
 int WRITE_10 ; 
 int WRITE_6 ; 
 int FUNC3 (struct scsi_cmnd*,struct rtsx_chip*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_chip*,unsigned int) ; 
 scalar_t__ FUNC5 (struct rtsx_chip*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (struct rtsx_chip*,unsigned int) ; 
 scalar_t__ FUNC8 (struct rtsx_chip*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC10 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC11 (struct rtsx_chip*) ; 
 scalar_t__ FUNC12 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC13 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct rtsx_chip*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 

__attribute__((used)) static int FUNC17(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
#ifdef SUPPORT_SD_LOCK
	struct sd_info *sd_card = &chip->sd_card;
#endif
	unsigned int lun = FUNC1(srb);
	int retval;
	u32 start_sec;
	u16 sec_cnt;

	FUNC10(chip);

	if (chip->ss_en && (FUNC12(chip) == RTSX_STAT_SS)) {
		FUNC11(chip);
		FUNC16(100);
	}
	FUNC13(chip, RTSX_STAT_RUN);

	if (!FUNC4(chip, lun) || (FUNC7(chip, lun) == 0)) {
		FUNC15(chip, lun, SENSE_TYPE_MEDIA_NOT_PRESENT);
		return TRANSPORT_FAILED;
	}

	if (!(FUNC0(chip->lun_mc, lun))) {
		FUNC2(chip->lun_mc, lun);
		FUNC15(chip, lun, SENSE_TYPE_MEDIA_CHANGE);
		return TRANSPORT_FAILED;
	}

#ifdef SUPPORT_SD_LOCK
	if (sd_card->sd_erase_status) {
		/* Accessing to any card is forbidden
		 * until the erase procedure of SD is completed
		 */
		dev_dbg(rtsx_dev(chip), "SD card being erased!\n");
		set_sense_type(chip, lun, SENSE_TYPE_MEDIA_READ_FORBIDDEN);
		return TRANSPORT_FAILED;
	}

	if (get_lun_card(chip, lun) == SD_CARD) {
		if (sd_card->sd_lock_status & SD_LOCKED) {
			dev_dbg(rtsx_dev(chip), "SD card locked!\n");
			set_sense_type(chip, lun,
				       SENSE_TYPE_MEDIA_READ_FORBIDDEN);
			return TRANSPORT_FAILED;
		}
	}
#endif

	if ((srb->cmnd[0] == READ_10) || (srb->cmnd[0] == WRITE_10)) {
		start_sec = ((u32)srb->cmnd[2] << 24) |
			((u32)srb->cmnd[3] << 16) |
			((u32)srb->cmnd[4] << 8) | ((u32)srb->cmnd[5]);
		sec_cnt = ((u16)(srb->cmnd[7]) << 8) | srb->cmnd[8];
	} else if ((srb->cmnd[0] == READ_6) || (srb->cmnd[0] == WRITE_6)) {
		start_sec = ((u32)(srb->cmnd[1] & 0x1F) << 16) |
			((u32)srb->cmnd[2] << 8) | ((u32)srb->cmnd[3]);
		sec_cnt = srb->cmnd[4];
		if (sec_cnt == 0)
			sec_cnt = 256;
	} else if ((srb->cmnd[0] == VENDOR_CMND) &&
		(srb->cmnd[1] == SCSI_APP_CMD) &&
		((srb->cmnd[2] == PP_READ10) || (srb->cmnd[2] == PP_WRITE10))) {
		start_sec = ((u32)srb->cmnd[4] << 24) |
			((u32)srb->cmnd[5] << 16) |
			((u32)srb->cmnd[6] << 8) | ((u32)srb->cmnd[7]);
		sec_cnt = ((u16)(srb->cmnd[9]) << 8) | srb->cmnd[10];
	} else {
		FUNC15(chip, lun, SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
		return TRANSPORT_FAILED;
	}

	/* In some test, we will receive a start_sec like 0xFFFFFFFF.
	 * In this situation, start_sec + sec_cnt will overflow, so we
	 * need to judge start_sec at first
	 */
	if ((start_sec > FUNC7(chip, lun)) ||
	    ((start_sec + sec_cnt) > FUNC7(chip, lun))) {
		FUNC15(chip, lun, SENSE_TYPE_MEDIA_LBA_OVER_RANGE);
		return TRANSPORT_FAILED;
	}

	if (sec_cnt == 0) {
		FUNC14(srb, 0);
		return TRANSPORT_GOOD;
	}

	if (chip->rw_fail_cnt[lun] == 3) {
		FUNC6(FUNC9(chip), "read/write fail three times in succession\n");
		if (srb->sc_data_direction == DMA_FROM_DEVICE)
			FUNC15(chip, lun,
				       SENSE_TYPE_MEDIA_UNRECOVER_READ_ERR);
		else
			FUNC15(chip, lun, SENSE_TYPE_MEDIA_WRITE_ERR);

		return TRANSPORT_FAILED;
	}

	if (srb->sc_data_direction == DMA_TO_DEVICE) {
		if (FUNC5(chip, lun)) {
			FUNC6(FUNC9(chip), "Write protected card!\n");
			FUNC15(chip, lun,
				       SENSE_TYPE_MEDIA_WRITE_PROTECT);
			return TRANSPORT_FAILED;
		}
	}

	retval = FUNC3(srb, chip, start_sec, sec_cnt);
	if (retval != STATUS_SUCCESS) {
		if (chip->need_release & chip->lun2card[lun]) {
			chip->rw_fail_cnt[lun] = 0;
			FUNC15(chip, lun, SENSE_TYPE_MEDIA_NOT_PRESENT);
		} else {
			chip->rw_fail_cnt[lun]++;
			if (srb->sc_data_direction == DMA_FROM_DEVICE)
				FUNC15
					(chip, lun,
					 SENSE_TYPE_MEDIA_UNRECOVER_READ_ERR);
			else
				FUNC15(chip, lun,
					       SENSE_TYPE_MEDIA_WRITE_ERR);
		}
		retval = TRANSPORT_FAILED;
		goto exit;
	} else {
		chip->rw_fail_cnt[lun] = 0;
		retval = TRANSPORT_GOOD;
	}

	FUNC14(srb, 0);

exit:
	return retval;
}