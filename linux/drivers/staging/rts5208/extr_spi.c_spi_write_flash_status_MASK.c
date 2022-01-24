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
struct rtsx_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_DATA_SOURCE ; 
 int /*<<< orphan*/  CHECK_REG_CMD ; 
 int PINGPONG_BUFFER ; 
 int /*<<< orphan*/  PPBUF_BASE2 ; 
 int SPI_ADDRESS_BIT_24 ; 
 int /*<<< orphan*/  SPI_CA_NUMBER ; 
 int SPI_CDO_MODE0 ; 
 int /*<<< orphan*/  SPI_COMMAND ; 
 int SPI_COMMAND_BIT_8 ; 
 int /*<<< orphan*/  SPI_HW_ERR ; 
 int /*<<< orphan*/  SPI_LENGTH0 ; 
 int /*<<< orphan*/  SPI_LENGTH1 ; 
 int /*<<< orphan*/  SPI_TRANSFER0 ; 
 int SPI_TRANSFER0_END ; 
 int SPI_TRANSFER0_START ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  WRITE_REG_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*) ; 
 int FUNC3 (struct rtsx_chip*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct rtsx_chip*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct rtsx_chip*) ; 

int FUNC7(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
	int retval;
	u8 ins, status, ewsr;

	ins = srb->cmnd[3];
	status = srb->cmnd[4];
	ewsr = srb->cmnd[5];

	retval = FUNC6(chip);
	if (retval != STATUS_SUCCESS) {
		FUNC5(chip, SPI_HW_ERR);
		return STATUS_FAIL;
	}

	retval = FUNC4(chip, ewsr);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	FUNC2(chip);

	FUNC0(chip, WRITE_REG_CMD, CARD_DATA_SOURCE, 0x01,
		     PINGPONG_BUFFER);

	FUNC0(chip, WRITE_REG_CMD, SPI_COMMAND, 0xFF, ins);
	FUNC0(chip, WRITE_REG_CMD, SPI_CA_NUMBER, 0xFF,
		     SPI_COMMAND_BIT_8 | SPI_ADDRESS_BIT_24);
	FUNC0(chip, WRITE_REG_CMD, SPI_LENGTH1, 0xFF, 0);
	FUNC0(chip, WRITE_REG_CMD, SPI_LENGTH0, 0xFF, 1);
	FUNC0(chip, WRITE_REG_CMD, PPBUF_BASE2, 0xFF, status);
	FUNC0(chip, WRITE_REG_CMD, SPI_TRANSFER0, 0xFF,
		     SPI_TRANSFER0_START | SPI_CDO_MODE0);
	FUNC0(chip, CHECK_REG_CMD, SPI_TRANSFER0, SPI_TRANSFER0_END,
		     SPI_TRANSFER0_END);

	retval = FUNC3(chip, 0, 100);
	if (retval != STATUS_SUCCESS) {
		FUNC1(chip);
		FUNC5(chip, SPI_HW_ERR);
		return STATUS_FAIL;
	}

	return STATUS_SUCCESS;
}