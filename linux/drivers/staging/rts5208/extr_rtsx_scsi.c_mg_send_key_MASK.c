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
#define  KF_CHG_HOST 131 
#define  KF_RSP_HOST 130 
#define  KF_SET_ICV 129 
#define  KF_SET_LEAF_ID 128 
 scalar_t__ MS_CARD ; 
 int /*<<< orphan*/  RTSX_STAT_RUN ; 
 scalar_t__ RTSX_STAT_SS ; 
 unsigned int FUNC1 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_INVALID_CMD_FIELD ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_LUN_NOT_SUPPORT ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_NOT_PRESENT ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_WRITE_PROTECT ; 
 int /*<<< orphan*/  SENSE_TYPE_MG_INCOMPATIBLE_MEDIUM ; 
 int STATUS_SUCCESS ; 
 int TRANSPORT_FAILED ; 
 int TRANSPORT_GOOD ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*,unsigned int) ; 
 scalar_t__ FUNC3 (struct rtsx_chip*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC5 (struct rtsx_chip*,unsigned int) ; 
 int FUNC6 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC7 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC8 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC9 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC10 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC11 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC12 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC13 (struct rtsx_chip*) ; 
 scalar_t__ FUNC14 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC15 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC17 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct rtsx_chip*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 

__attribute__((used)) static int FUNC20(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
	struct ms_info *ms_card = &chip->ms_card;
	unsigned int lun = FUNC1(srb);
	int retval;
	u8 key_format;

	FUNC12(chip);

	if (chip->ss_en && (FUNC14(chip) == RTSX_STAT_SS)) {
		FUNC13(chip);
		FUNC19(100);
	}
	FUNC15(chip, RTSX_STAT_RUN);

	FUNC10(chip);

	if (!FUNC2(chip, lun)) {
		FUNC18(chip, lun, SENSE_TYPE_MEDIA_NOT_PRESENT);
		return TRANSPORT_FAILED;
	}
	if (FUNC3(chip, lun)) {
		FUNC18(chip, lun, SENSE_TYPE_MEDIA_WRITE_PROTECT);
		return TRANSPORT_FAILED;
	}
	if (FUNC5(chip, lun) != MS_CARD) {
		FUNC18(chip, lun, SENSE_TYPE_MEDIA_LUN_NOT_SUPPORT);
		return TRANSPORT_FAILED;
	}

	if (srb->cmnd[7] != KC_MG_R_PRO) {
		FUNC18(chip, lun, SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
		return TRANSPORT_FAILED;
	}

	if (!FUNC0(ms_card)) {
		FUNC18(chip, lun, SENSE_TYPE_MG_INCOMPATIBLE_MEDIUM);
		return TRANSPORT_FAILED;
	}

	key_format = srb->cmnd[10] & 0x3F;
	FUNC4(FUNC11(chip), "key_format = 0x%x\n", key_format);

	switch (key_format) {
	case KF_SET_LEAF_ID:
		if ((FUNC16(srb) == 0x0C) &&
		    (srb->cmnd[8] == 0x00) &&
		    (srb->cmnd[9] == 0x0C)) {
			retval = FUNC9(srb, chip);
			if (retval != STATUS_SUCCESS)
				return TRANSPORT_FAILED;

		} else {
			FUNC18(chip, lun,
				       SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
			return TRANSPORT_FAILED;
		}
		break;

	case KF_CHG_HOST:
		if ((FUNC16(srb) == 0x0C) &&
		    (srb->cmnd[8] == 0x00) &&
		    (srb->cmnd[9] == 0x0C)) {
			retval = FUNC6(srb, chip);
			if (retval != STATUS_SUCCESS)
				return TRANSPORT_FAILED;

		} else {
			FUNC18(chip, lun,
				       SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
			return TRANSPORT_FAILED;
		}
		break;

	case KF_RSP_HOST:
		if ((FUNC16(srb) == 0x0C) &&
		    (srb->cmnd[8] == 0x00) &&
		    (srb->cmnd[9] == 0x0C)) {
			retval = FUNC7(srb, chip);
			if (retval != STATUS_SUCCESS)
				return TRANSPORT_FAILED;

		} else {
			FUNC18(chip, lun,
				       SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
			return TRANSPORT_FAILED;
		}
		break;

	case KF_SET_ICV:
		ms_card->mg_entry_num = srb->cmnd[5];
		if ((FUNC16(srb) == 0x404) &&
		    (srb->cmnd[8] == 0x04) &&
		    (srb->cmnd[9] == 0x04) &&
		    (srb->cmnd[2] == 0x00) &&
		    (srb->cmnd[3] == 0x00) &&
		    (srb->cmnd[4] == 0x00) &&
		    (srb->cmnd[5] < 32)) {
			retval = FUNC8(srb, chip);
			if (retval != STATUS_SUCCESS)
				return TRANSPORT_FAILED;

		} else {
			FUNC18(chip, lun,
				       SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
			return TRANSPORT_FAILED;
		}
		break;

	default:
		FUNC18(chip, lun, SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
		return TRANSPORT_FAILED;
	}

	FUNC17(srb, 0);
	return TRANSPORT_GOOD;
}