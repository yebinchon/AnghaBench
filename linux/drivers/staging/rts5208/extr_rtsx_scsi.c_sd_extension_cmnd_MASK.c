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
struct rtsx_chip {scalar_t__ ss_en; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTSX_STAT_RUN ; 
 scalar_t__ RTSX_STAT_SS ; 
 unsigned int FUNC0 (struct scsi_cmnd*) ; 
 scalar_t__ SD_CARD ; 
#define  SD_EXECUTE_NO_DATA 133 
#define  SD_EXECUTE_READ 132 
#define  SD_EXECUTE_WRITE 131 
#define  SD_GET_RSP 130 
#define  SD_HW_RST 129 
#define  SD_PASS_THRU_MODE 128 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_INVALID_CMD_FIELD ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_LUN_NOT_SUPPORT ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_NOT_PRESENT ; 
 int TRANSPORT_FAILED ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*,unsigned int) ; 
 scalar_t__ FUNC2 (struct rtsx_chip*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_chip*) ; 
 scalar_t__ FUNC5 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rtsx_chip*) ; 
 int FUNC8 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC9 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC10 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC11 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC12 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC13 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC14 (struct rtsx_chip*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 

__attribute__((used)) static int FUNC16(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
	unsigned int lun = FUNC0(srb);
	int result;

	FUNC3(chip);

	if (chip->ss_en && (FUNC5(chip) == RTSX_STAT_SS)) {
		FUNC4(chip);
		FUNC15(100);
	}
	FUNC6(chip, RTSX_STAT_RUN);

	FUNC7(chip);

	if (!FUNC1(chip, lun)) {
		FUNC14(chip, lun, SENSE_TYPE_MEDIA_NOT_PRESENT);
		return TRANSPORT_FAILED;
	}
	if (FUNC2(chip, lun) != SD_CARD) {
		FUNC14(chip, lun, SENSE_TYPE_MEDIA_LUN_NOT_SUPPORT);
		return TRANSPORT_FAILED;
	}

	switch (srb->cmnd[0]) {
	case SD_PASS_THRU_MODE:
		result = FUNC13(srb, chip);
		break;

	case SD_EXECUTE_NO_DATA:
		result = FUNC8(srb, chip);
		break;

	case SD_EXECUTE_READ:
		result = FUNC9(srb, chip);
		break;

	case SD_EXECUTE_WRITE:
		result = FUNC10(srb, chip);
		break;

	case SD_GET_RSP:
		result = FUNC11(srb, chip);
		break;

	case SD_HW_RST:
		result = FUNC12(srb, chip);
		break;

	default:
		FUNC14(chip, lun, SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
		return TRANSPORT_FAILED;
	}

	return result;
}