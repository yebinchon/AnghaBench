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
typedef  int /*<<< orphan*/  u16 ;
struct sd_info {scalar_t__ sd_erase_status; } ;
struct scsi_cmnd {int* cmnd; } ;
struct ms_info {scalar_t__ format_status; scalar_t__ progress; } ;
struct rtsx_chip {struct ms_info ms_card; struct sd_info sd_card; } ;

/* Variables and functions */
#define  ALLOW_MEDIUM_REMOVAL 152 
#define  CMD_MSPRO_MG_RKEY 151 
#define  CMD_MSPRO_MG_SKEY 150 
 int /*<<< orphan*/  CUR_ERR ; 
 scalar_t__ FORMAT_IN_PROGRESS ; 
#define  FORMAT_UNIT 149 
 int GET_DEV_STATUS ; 
#define  INQUIRY 148 
#define  MODE_SELECT 147 
#define  MODE_SENSE 146 
#define  MODE_SENSE_10 145 
 scalar_t__ MS_CARD ; 
#define  MS_SP_CMND 144 
#define  READ_10 143 
#define  READ_6 142 
#define  READ_CAPACITY 141 
#define  REQUEST_SENSE 140 
 int SCSI_APP_CMD ; 
 unsigned int FUNC0 (struct scsi_cmnd*) ; 
#define  SD_EXECUTE_NO_DATA 139 
#define  SD_EXECUTE_READ 138 
#define  SD_EXECUTE_WRITE 137 
#define  SD_GET_RSP 136 
#define  SD_HW_RST 135 
#define  SD_PASS_THRU_MODE 134 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_INVALID_CMD_FIELD ; 
#define  START_STOP 133 
#define  TEST_UNIT_READY 132 
 int TRANSPORT_FAILED ; 
 int TRANSPORT_GOOD ; 
#define  VENDOR_CMND 131 
#define  VERIFY 130 
#define  WRITE_10 129 
#define  WRITE_6 128 
 int FUNC1 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 scalar_t__ FUNC2 (struct rtsx_chip*,unsigned int) ; 
 int FUNC3 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC5 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC6 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC7 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC8 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC9 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC10 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC11 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC12 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC13 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC14 (struct rtsx_chip*,unsigned int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct rtsx_chip*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC17 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC18 (struct scsi_cmnd*,struct rtsx_chip*) ; 

int FUNC19(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
#ifdef SUPPORT_SD_LOCK
	struct sd_info *sd_card = &chip->sd_card;
#endif
	struct ms_info *ms_card = &chip->ms_card;
	unsigned int lun = FUNC0(srb);
	int result;

#ifdef SUPPORT_SD_LOCK
	if (sd_card->sd_erase_status) {
		/* Block all SCSI command except for
		 * REQUEST_SENSE and rs_ppstatus
		 */
		if (!((srb->cmnd[0] == VENDOR_CMND) &&
		      (srb->cmnd[1] == SCSI_APP_CMD) &&
		      (srb->cmnd[2] == GET_DEV_STATUS)) &&
		      (srb->cmnd[0] != REQUEST_SENSE)) {
			/* Logical Unit Not Ready Format in Progress */
			set_sense_data(chip, lun, CUR_ERR,
				       0x02, 0, 0x04, 0x04, 0, 0);
			return TRANSPORT_FAILED;
		}
	}
#endif

	if ((FUNC2(chip, lun) == MS_CARD) &&
	    (ms_card->format_status == FORMAT_IN_PROGRESS)) {
		if ((srb->cmnd[0] != REQUEST_SENSE) &&
		    (srb->cmnd[0] != INQUIRY)) {
			/* Logical Unit Not Ready Format in Progress */
			FUNC14(chip, lun, CUR_ERR, 0x02, 0, 0x04, 0x04,
				       0, (u16)(ms_card->progress));
			return TRANSPORT_FAILED;
		}
	}

	switch (srb->cmnd[0]) {
	case READ_10:
	case WRITE_10:
	case READ_6:
	case WRITE_6:
		result = FUNC11(srb, chip);
#if !defined(LED_AUTO_BLINK) && !defined(REGULAR_BLINK)
		FUNC4(srb, chip);
#endif
		break;

	case TEST_UNIT_READY:
		result = FUNC17(srb, chip);
		break;

	case INQUIRY:
		result = FUNC3(srb, chip);
		break;

	case READ_CAPACITY:
		result = FUNC9(srb, chip);
		break;

	case START_STOP:
		result = FUNC16(srb, chip);
		break;

	case ALLOW_MEDIUM_REMOVAL:
		result = FUNC1(srb, chip);
		break;

	case REQUEST_SENSE:
		result = FUNC12(srb, chip);
		break;

	case MODE_SENSE:
	case MODE_SENSE_10:
		result = FUNC7(srb, chip);
		break;

	case 0x23:
		result = FUNC10(srb, chip);
		break;

	case VENDOR_CMND:
		result = FUNC18(srb, chip);
		break;

	case MS_SP_CMND:
		result = FUNC8(srb, chip);
		break;

#ifdef SUPPORT_CPRM
	case SD_PASS_THRU_MODE:
	case SD_EXECUTE_NO_DATA:
	case SD_EXECUTE_READ:
	case SD_EXECUTE_WRITE:
	case SD_GET_RSP:
	case SD_HW_RST:
		result = sd_extension_cmnd(srb, chip);
		break;
#endif

#ifdef SUPPORT_MAGIC_GATE
	case CMD_MSPRO_MG_RKEY:
		result = mg_report_key(srb, chip);
		break;

	case CMD_MSPRO_MG_SKEY:
		result = mg_send_key(srb, chip);
		break;
#endif

	case FORMAT_UNIT:
	case MODE_SELECT:
	case VERIFY:
		result = TRANSPORT_GOOD;
		break;

	default:
		FUNC15(chip, lun, SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
		result = TRANSPORT_FAILED;
	}

	return result;
}