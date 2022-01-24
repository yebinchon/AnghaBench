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
struct ms_info {int mg_entry_num; } ;
struct rtsx_chip {scalar_t__ ss_en; struct ms_info ms_card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ms_info*) ; 
 int KC_MG_R_PRO ; 
#define  KF_GET_ICV 130 
#define  KF_GET_LOC_EKB 129 
#define  KF_RSP_CHG 128 
 scalar_t__ MS_CARD ; 
 int /*<<< orphan*/  RTSX_STAT_RUN ; 
 scalar_t__ RTSX_STAT_SS ; 
 unsigned int FUNC1 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_INVALID_CMD_FIELD ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_LUN_NOT_SUPPORT ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_NOT_PRESENT ; 
 int /*<<< orphan*/  SENSE_TYPE_MG_INCOMPATIBLE_MEDIUM ; 
 int STATUS_SUCCESS ; 
 int TRANSPORT_FAILED ; 
 int TRANSPORT_GOOD ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC4 (struct rtsx_chip*,unsigned int) ; 
 int FUNC5 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC6 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC7 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC8 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC9 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC10 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC11 (struct rtsx_chip*) ; 
 scalar_t__ FUNC12 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC13 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC15 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct rtsx_chip*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 

__attribute__((used)) static int FUNC18(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
	struct ms_info *ms_card = &chip->ms_card;
	unsigned int lun = FUNC1(srb);
	int retval;
	u8 key_format;

	FUNC10(chip);

	if (chip->ss_en && (FUNC12(chip) == RTSX_STAT_SS)) {
		FUNC11(chip);
		FUNC17(100);
	}
	FUNC13(chip, RTSX_STAT_RUN);

	FUNC8(chip);

	if (!FUNC2(chip, lun)) {
		FUNC16(chip, lun, SENSE_TYPE_MEDIA_NOT_PRESENT);
		return TRANSPORT_FAILED;
	}
	if (FUNC4(chip, lun) != MS_CARD) {
		FUNC16(chip, lun, SENSE_TYPE_MEDIA_LUN_NOT_SUPPORT);
		return TRANSPORT_FAILED;
	}

	if (srb->cmnd[7] != KC_MG_R_PRO) {
		FUNC16(chip, lun, SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
		return TRANSPORT_FAILED;
	}

	if (!FUNC0(ms_card)) {
		FUNC16(chip, lun, SENSE_TYPE_MG_INCOMPATIBLE_MEDIUM);
		return TRANSPORT_FAILED;
	}

	key_format = srb->cmnd[10] & 0x3F;
	FUNC3(FUNC9(chip), "key_format = 0x%x\n", key_format);

	switch (key_format) {
	case KF_GET_LOC_EKB:
		if ((FUNC14(srb) == 0x41C) &&
		    (srb->cmnd[8] == 0x04) &&
		    (srb->cmnd[9] == 0x1C)) {
			retval = FUNC6(srb, chip);
			if (retval != STATUS_SUCCESS)
				return TRANSPORT_FAILED;

		} else {
			FUNC16(chip, lun,
				       SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
			return TRANSPORT_FAILED;
		}
		break;

	case KF_RSP_CHG:
		if ((FUNC14(srb) == 0x24) &&
		    (srb->cmnd[8] == 0x00) &&
		    (srb->cmnd[9] == 0x24)) {
			retval = FUNC7(srb, chip);
			if (retval != STATUS_SUCCESS)
				return TRANSPORT_FAILED;

		} else {
			FUNC16(chip, lun,
				       SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
			return TRANSPORT_FAILED;
		}
		break;

	case KF_GET_ICV:
		ms_card->mg_entry_num = srb->cmnd[5];
		if ((FUNC14(srb) == 0x404) &&
		    (srb->cmnd[8] == 0x04) &&
		    (srb->cmnd[9] == 0x04) &&
		    (srb->cmnd[2] == 0x00) &&
		    (srb->cmnd[3] == 0x00) &&
		    (srb->cmnd[4] == 0x00) &&
		    (srb->cmnd[5] < 32)) {
			retval = FUNC5(srb, chip);
			if (retval != STATUS_SUCCESS)
				return TRANSPORT_FAILED;

		} else {
			FUNC16(chip, lun,
				       SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
			return TRANSPORT_FAILED;
		}
		break;

	default:
		FUNC16(chip, lun, SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
		return TRANSPORT_FAILED;
	}

	FUNC15(srb, 0);
	return TRANSPORT_GOOD;
}