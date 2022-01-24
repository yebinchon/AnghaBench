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
struct rtsx_chip {int dummy; } ;

/* Variables and functions */
#define  DMA_READ 147 
#define  DMA_WRITE 146 
#define  ERASE_EEPROM2 145 
#define  GET_DEV_STATUS 144 
#define  GET_VAR 143 
#define  PP_READ10 142 
#define  PP_WRITE10 141 
#define  READ_CFG 140 
#define  READ_EEPROM2 139 
#define  READ_EFUSE 138 
#define  READ_HOST_REG 137 
#define  READ_PHY 136 
 int /*<<< orphan*/  FUNC0 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_INVALID_CMD_FIELD ; 
#define  SET_CHIP_MODE 135 
#define  SET_VAR 134 
#define  SUIT_CMD 133 
 int TRANSPORT_FAILED ; 
#define  WRITE_CFG 132 
#define  WRITE_EEPROM2 131 
#define  WRITE_EFUSE 130 
#define  WRITE_HOST_REG 129 
#define  WRITE_PHY 128 
 int FUNC1 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC2 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC3 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC4 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC5 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC6 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC7 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC8 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC9 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC10 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC11 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC12 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC14 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC15 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC16 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC17 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC18 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC19 (struct scsi_cmnd*,struct rtsx_chip*) ; 

__attribute__((used)) static int FUNC20(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
	int result;

	switch (srb->cmnd[2]) {
	case PP_READ10:
	case PP_WRITE10:
		result = FUNC10(srb, chip);
		break;

	case READ_HOST_REG:
		result = FUNC8(srb, chip);
		break;

	case WRITE_HOST_REG:
		result = FUNC18(srb, chip);
		break;

	case GET_VAR:
		result = FUNC4(srb, chip);
		break;

	case SET_VAR:
		result = FUNC13(srb, chip);
		break;

	case DMA_READ:
	case DMA_WRITE:
		result = FUNC1(srb, chip);
		break;

	case READ_PHY:
		result = FUNC9(srb, chip);
		break;

	case WRITE_PHY:
		result = FUNC19(srb, chip);
		break;

	case ERASE_EEPROM2:
		result = FUNC2(srb, chip);
		break;

	case READ_EEPROM2:
		result = FUNC6(srb, chip);
		break;

	case WRITE_EEPROM2:
		result = FUNC16(srb, chip);
		break;

	case READ_EFUSE:
		result = FUNC7(srb, chip);
		break;

	case WRITE_EFUSE:
		result = FUNC17(srb, chip);
		break;

	case READ_CFG:
		result = FUNC5(srb, chip);
		break;

	case WRITE_CFG:
		result = FUNC15(srb, chip);
		break;

	case SET_CHIP_MODE:
		result = FUNC11(srb, chip);
		break;

	case SUIT_CMD:
		result = FUNC14(srb, chip);
		break;

	case GET_DEV_STATUS:
		result = FUNC3(srb, chip);
		break;

	default:
		FUNC12(chip, FUNC0(srb),
			       SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
		return TRANSPORT_FAILED;
	}

	return result;
}