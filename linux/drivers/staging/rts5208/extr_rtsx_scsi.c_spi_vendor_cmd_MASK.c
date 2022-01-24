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
struct rtsx_chip {scalar_t__ ss_en; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_GPIO_DIR ; 
 scalar_t__ FUNC0 (struct rtsx_chip*,int) ; 
 int /*<<< orphan*/  RTSX_STAT_RUN ; 
 scalar_t__ RTSX_STAT_SS ; 
 unsigned int FUNC1 (struct scsi_cmnd*) ; 
#define  SCSI_SPI_ERASEFLASH 134 
#define  SCSI_SPI_GETSTATUS 133 
#define  SCSI_SPI_READFALSHID 132 
#define  SCSI_SPI_READFLASH 131 
#define  SCSI_SPI_SETPARAMETER 130 
#define  SCSI_SPI_WRITEFLASH 129 
#define  SCSI_SPI_WRITEFLASHSTATUS 128 
 int /*<<< orphan*/  SENSE_TYPE_MEDIA_INVALID_CMD_FIELD ; 
 int /*<<< orphan*/  SSC_PDCTL ; 
 int STATUS_SUCCESS ; 
 int TRANSPORT_FAILED ; 
 int TRANSPORT_GOOD ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtsx_chip*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct rtsx_chip*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC11 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC12 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC13 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC14 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC15 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int FUNC16 (struct scsi_cmnd*,struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 

__attribute__((used)) static int FUNC18(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
	int result;
	unsigned int lun = FUNC1(srb);
	u8 gpio_dir;

	if (FUNC0(chip, 0x5208) || FUNC0(chip, 0x5288)) {
		FUNC9(chip, lun, SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
		return TRANSPORT_FAILED;
	}

	FUNC2(chip);

	if (chip->ss_en && (FUNC5(chip) == RTSX_STAT_SS)) {
		FUNC3(chip);
		FUNC17(100);
	}
	FUNC7(chip, RTSX_STAT_RUN);

	FUNC4(chip, SSC_PDCTL);

	FUNC6(chip, CARD_GPIO_DIR, &gpio_dir);
	FUNC8(chip, CARD_GPIO_DIR, 0x07, gpio_dir & 0x06);

	switch (srb->cmnd[2]) {
	case SCSI_SPI_GETSTATUS:
		result = FUNC11(srb, chip);
		break;

	case SCSI_SPI_SETPARAMETER:
		result = FUNC14(srb, chip);
		break;

	case SCSI_SPI_READFALSHID:
		result = FUNC13(srb, chip);
		break;

	case SCSI_SPI_READFLASH:
		result = FUNC12(srb, chip);
		break;

	case SCSI_SPI_WRITEFLASH:
		result = FUNC15(srb, chip);
		break;

	case SCSI_SPI_WRITEFLASHSTATUS:
		result = FUNC16(srb, chip);
		break;

	case SCSI_SPI_ERASEFLASH:
		result = FUNC10(srb, chip);
		break;

	default:
		FUNC8(chip, CARD_GPIO_DIR, 0x07, gpio_dir);

		FUNC9(chip, lun, SENSE_TYPE_MEDIA_INVALID_CMD_FIELD);
		return TRANSPORT_FAILED;
	}

	FUNC8(chip, CARD_GPIO_DIR, 0x07, gpio_dir);

	if (result != STATUS_SUCCESS)
		return TRANSPORT_FAILED;

	return TRANSPORT_GOOD;
}