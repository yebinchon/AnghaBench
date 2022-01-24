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
struct scsi_cmnd {int* cmnd; } ;
struct ms_info {int dummy; } ;
struct rtsx_chip {int card_ready; int card_wp; scalar_t__ ss_en; struct ms_info ms_card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ms_info*) ; 
 int MS_CARD ; 
 int /*<<< orphan*/  MS_SHORT_DATA_LEN ; 
 int /*<<< orphan*/  RTSX_STAT_RUN ; 
 scalar_t__ RTSX_STAT_SS ; 
 unsigned int FUNC1 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  SENSE_TYPE_FORMAT_CMD_FAILED ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_INVALID_CMD_FIELD ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_LUN_NOT_SUPPORT ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_NOT_PRESENT ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_WRITE_PROTECT ; 
 int STATUS_SUCCESS ; 
 int TRANSPORT_FAILED ; 
 int TRANSPORT_GOOD ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*,unsigned int) ; 
 scalar_t__ FUNC3 (struct rtsx_chip*,unsigned int) ; 
 int FUNC4 (struct rtsx_chip*,unsigned int) ; 
 int FUNC5 (struct scsi_cmnd*,struct rtsx_chip*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtsx_chip*) ; 
 scalar_t__ FUNC8 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC9 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct rtsx_chip*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
	struct ms_info *ms_card = &chip->ms_card;
	unsigned int lun = FUNC1(srb);
	bool quick_format;
	int retval;

	if (FUNC4(chip, lun) != MS_CARD) {
		FUNC11(chip, lun, SENSE_TYPE_MEDIA_LUN_NOT_SUPPORT);
		return TRANSPORT_FAILED;
	}

	if ((srb->cmnd[3] != 0x4D) || (srb->cmnd[4] != 0x47) ||
	    (srb->cmnd[5] != 0x66) || (srb->cmnd[6] != 0x6D) ||
		(srb->cmnd[7] != 0x74)) {
		FUNC11(chip, lun, SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
		return TRANSPORT_FAILED;
	}

	FUNC6(chip);

	if (chip->ss_en && (FUNC8(chip) == RTSX_STAT_SS)) {
		FUNC7(chip);
		FUNC12(100);

		if (!FUNC2(chip, lun) ||
		    (FUNC3(chip, lun) == 0)) {
			FUNC11(chip, lun, SENSE_TYPE_MEDIA_NOT_PRESENT);
			return TRANSPORT_FAILED;
		}
	}
	FUNC9(chip, RTSX_STAT_RUN);

	if (srb->cmnd[8] & 0x01)
		quick_format = false;
	else
		quick_format = true;

	if (!(chip->card_ready & MS_CARD)) {
		FUNC11(chip, lun, SENSE_TYPE_MEDIA_NOT_PRESENT);
		return TRANSPORT_FAILED;
	}

	if (chip->card_wp & MS_CARD) {
		FUNC11(chip, lun, SENSE_TYPE_MEDIA_WRITE_PROTECT);
		return TRANSPORT_FAILED;
	}

	if (!FUNC0(ms_card)) {
		FUNC11(chip, lun, SENSE_TYPE_MEDIA_LUN_NOT_SUPPORT);
		return TRANSPORT_FAILED;
	}

	retval = FUNC5(srb, chip, MS_SHORT_DATA_LEN, quick_format);
	if (retval != STATUS_SUCCESS) {
		FUNC11(chip, lun, SENSE_TYPE_FORMAT_CMD_FAILED);
		return TRANSPORT_FAILED;
	}

	FUNC10(srb, 0);
	return TRANSPORT_GOOD;
}