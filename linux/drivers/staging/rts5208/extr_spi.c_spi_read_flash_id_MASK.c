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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct scsi_cmnd {int* cmnd; } ;
struct rtsx_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_DATA_SOURCE ; 
 int /*<<< orphan*/  CHECK_REG_CMD ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PINGPONG_BUFFER ; 
 int /*<<< orphan*/  SPI_ADDR0 ; 
 int /*<<< orphan*/  SPI_ADDR1 ; 
 int /*<<< orphan*/  SPI_ADDR2 ; 
 int SPI_ADDRESS_BIT_24 ; 
 int SPI_CADI_MODE0 ; 
 int SPI_CA_MODE0 ; 
 int /*<<< orphan*/  SPI_CA_NUMBER ; 
 int SPI_CDI_MODE0 ; 
 int /*<<< orphan*/  SPI_COMMAND ; 
 int SPI_COMMAND_BIT_8 ; 
 int SPI_C_MODE0 ; 
 int /*<<< orphan*/  SPI_HW_ERR ; 
 int /*<<< orphan*/  SPI_INVALID_COMMAND ; 
 int /*<<< orphan*/  SPI_LENGTH0 ; 
 int /*<<< orphan*/  SPI_LENGTH1 ; 
 int /*<<< orphan*/  SPI_NO_ERR ; 
 int /*<<< orphan*/  SPI_READ_ERR ; 
 int /*<<< orphan*/  SPI_TRANSFER0 ; 
 int SPI_TRANSFER0_END ; 
 int SPI_TRANSFER0_START ; 
 int STATUS_ERROR ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  WRITE_REG_CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_chip*) ; 
 int FUNC5 (struct rtsx_chip*,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (struct rtsx_chip*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct rtsx_chip*) ; 

int FUNC12(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
	int retval;
	u16 len;
	u8 *buf;

	FUNC10(chip, SPI_NO_ERR);

	len = ((u16)(srb->cmnd[7]) << 8) | srb->cmnd[8];
	if (len > 512) {
		FUNC10(chip, SPI_INVALID_COMMAND);
		return STATUS_FAIL;
	}

	retval = FUNC11(chip);
	if (retval != STATUS_SUCCESS) {
		FUNC10(chip, SPI_HW_ERR);
		return STATUS_FAIL;
	}

	FUNC4(chip);

	FUNC2(chip, WRITE_REG_CMD, CARD_DATA_SOURCE, 0x01,
		     PINGPONG_BUFFER);

	FUNC2(chip, WRITE_REG_CMD, SPI_COMMAND, 0xFF, srb->cmnd[3]);
	FUNC2(chip, WRITE_REG_CMD, SPI_ADDR2, 0xFF, srb->cmnd[4]);
	FUNC2(chip, WRITE_REG_CMD, SPI_ADDR1, 0xFF, srb->cmnd[5]);
	FUNC2(chip, WRITE_REG_CMD, SPI_ADDR0, 0xFF, srb->cmnd[6]);
	FUNC2(chip, WRITE_REG_CMD, SPI_CA_NUMBER, 0xFF,
		     SPI_COMMAND_BIT_8 | SPI_ADDRESS_BIT_24);
	FUNC2(chip, WRITE_REG_CMD, SPI_LENGTH1, 0xFF, srb->cmnd[7]);
	FUNC2(chip, WRITE_REG_CMD, SPI_LENGTH0, 0xFF, srb->cmnd[8]);

	if (len == 0) {
		if (srb->cmnd[9]) {
			FUNC2(chip, WRITE_REG_CMD, SPI_TRANSFER0,
				     0xFF, SPI_TRANSFER0_START | SPI_CA_MODE0);
		} else {
			FUNC2(chip, WRITE_REG_CMD, SPI_TRANSFER0,
				     0xFF, SPI_TRANSFER0_START | SPI_C_MODE0);
		}
	} else {
		if (srb->cmnd[9]) {
			FUNC2(chip, WRITE_REG_CMD, SPI_TRANSFER0, 0xFF,
				     SPI_TRANSFER0_START | SPI_CADI_MODE0);
		} else {
			FUNC2(chip, WRITE_REG_CMD, SPI_TRANSFER0, 0xFF,
				     SPI_TRANSFER0_START | SPI_CDI_MODE0);
		}
	}

	FUNC2(chip, CHECK_REG_CMD, SPI_TRANSFER0, SPI_TRANSFER0_END,
		     SPI_TRANSFER0_END);

	retval = FUNC6(chip, 0, 100);
	if (retval < 0) {
		FUNC3(chip);
		FUNC10(chip, SPI_HW_ERR);
		return STATUS_FAIL;
	}

	if (len) {
		buf = FUNC1(len, GFP_KERNEL);
		if (!buf)
			return STATUS_ERROR;

		retval = FUNC5(chip, buf, len);
		if (retval != STATUS_SUCCESS) {
			FUNC10(chip, SPI_READ_ERR);
			FUNC0(buf);
			return STATUS_FAIL;
		}

		FUNC7(buf, FUNC8(srb), srb);
		FUNC9(srb, 0);

		FUNC0(buf);
	}

	return STATUS_SUCCESS;
}