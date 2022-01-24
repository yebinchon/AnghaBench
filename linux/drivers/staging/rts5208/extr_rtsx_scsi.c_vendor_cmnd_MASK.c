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
#define  GET_BUS_WIDTH 137 
#define  GET_SD_CSD 136 
#define  READ_EEPROM 135 
#define  READ_MEM 134 
#define  READ_STATUS 133 
#define  SCSI_APP_CMD 132 
 int /*<<< orphan*/  FUNC0 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_INVALID_CMD_FIELD ; 
#define  SPI_VENDOR_COMMAND 131 
#define  TOGGLE_GPIO 130 
 int TRANSPORT_FAILED ; 
#define  WRITE_EEPROM 129 
#define  WRITE_MEM 128 
 int FUNC1 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC2 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC3 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC4 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC5 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC6 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC9 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC10 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC11 (struct scsi_cmnd*,struct rtsx_chip*) ; 

__attribute__((used)) static int FUNC12(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
	int result;

	switch (srb->cmnd[1]) {
	case READ_STATUS:
		result = FUNC6(srb, chip);
		break;

	case READ_MEM:
		result = FUNC5(srb, chip);
		break;

	case WRITE_MEM:
		result = FUNC11(srb, chip);
		break;

	case READ_EEPROM:
		result = FUNC4(srb, chip);
		break;

	case WRITE_EEPROM:
		result = FUNC10(srb, chip);
		break;

	case TOGGLE_GPIO:
		result = FUNC9(srb, chip);
		break;

	case GET_SD_CSD:
		result = FUNC3(srb, chip);
		break;

	case GET_BUS_WIDTH:
		result = FUNC2(srb, chip);
		break;

	case SCSI_APP_CMD:
		result = FUNC1(srb, chip);
		break;

	case SPI_VENDOR_COMMAND:
		result = FUNC8(srb, chip);
		break;

	default:
		FUNC7(chip, FUNC0(srb),
			       SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
		return TRANSPORT_FAILED;
	}

	return result;
}