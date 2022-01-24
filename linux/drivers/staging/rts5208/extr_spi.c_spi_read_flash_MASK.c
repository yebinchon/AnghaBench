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
typedef  int u32 ;
typedef  int u16 ;
struct scsi_cmnd {int* cmnd; } ;
struct rtsx_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECK_REG_CMD ; 
 int /*<<< orphan*/  DMA_256 ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SF_PAGE_LEN ; 
 int /*<<< orphan*/  SPI_ADDR0 ; 
 int /*<<< orphan*/  SPI_ADDR1 ; 
 int /*<<< orphan*/  SPI_ADDR2 ; 
 int /*<<< orphan*/  SPI_ADDR3 ; 
 int SPI_ADDRESS_BIT_24 ; 
 int SPI_ADDRESS_BIT_32 ; 
 int SPI_CADI_MODE0 ; 
 int /*<<< orphan*/  SPI_CA_NUMBER ; 
 int /*<<< orphan*/  SPI_COMMAND ; 
 int SPI_COMMAND_BIT_8 ; 
 int /*<<< orphan*/  SPI_HW_ERR ; 
 int /*<<< orphan*/  SPI_LENGTH0 ; 
 int /*<<< orphan*/  SPI_LENGTH1 ; 
 int /*<<< orphan*/  SPI_NO_ERR ; 
 int /*<<< orphan*/  SPI_TRANSFER0 ; 
 int SPI_TRANSFER0_END ; 
 int SPI_TRANSFER0_START ; 
 int STATUS_ERROR ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  TO_XFER_BUF ; 
 int /*<<< orphan*/  WRITE_REG_CMD ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int,struct scsi_cmnd*,unsigned int*,unsigned int*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct rtsx_chip*,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct rtsx_chip*,int,int /*<<< orphan*/ ) ; 

int FUNC12(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
	int retval;
	unsigned int index = 0, offset = 0;
	u8 ins, slow_read;
	u32 addr;
	u16 len;
	u8 *buf;

	FUNC9(chip, SPI_NO_ERR);

	ins = srb->cmnd[3];
	addr = ((u32)(srb->cmnd[4]) << 16) | ((u32)(srb->cmnd[5])
					<< 8) | srb->cmnd[6];
	len = ((u16)(srb->cmnd[7]) << 8) | srb->cmnd[8];
	slow_read = srb->cmnd[9];

	retval = FUNC10(chip);
	if (retval != STATUS_SUCCESS) {
		FUNC9(chip, SPI_HW_ERR);
		return STATUS_FAIL;
	}

	buf = FUNC1(SF_PAGE_LEN, GFP_KERNEL);
	if (!buf)
		return STATUS_ERROR;

	while (len) {
		u16 pagelen = SF_PAGE_LEN - (u8)addr;

		if (pagelen > len)
			pagelen = len;

		FUNC4(chip);

		FUNC11(DMA_FROM_DEVICE, chip, 256, DMA_256);

		FUNC2(chip, WRITE_REG_CMD, SPI_COMMAND, 0xFF, ins);

		if (slow_read) {
			FUNC2(chip, WRITE_REG_CMD, SPI_ADDR0, 0xFF,
				     (u8)addr);
			FUNC2(chip, WRITE_REG_CMD, SPI_ADDR1, 0xFF,
				     (u8)(addr >> 8));
			FUNC2(chip, WRITE_REG_CMD, SPI_ADDR2, 0xFF,
				     (u8)(addr >> 16));
			FUNC2(chip, WRITE_REG_CMD, SPI_CA_NUMBER, 0xFF,
				     SPI_COMMAND_BIT_8 | SPI_ADDRESS_BIT_24);
		} else {
			FUNC2(chip, WRITE_REG_CMD, SPI_ADDR1, 0xFF,
				     (u8)addr);
			FUNC2(chip, WRITE_REG_CMD, SPI_ADDR2, 0xFF,
				     (u8)(addr >> 8));
			FUNC2(chip, WRITE_REG_CMD, SPI_ADDR3, 0xFF,
				     (u8)(addr >> 16));
			FUNC2(chip, WRITE_REG_CMD, SPI_CA_NUMBER, 0xFF,
				     SPI_COMMAND_BIT_8 | SPI_ADDRESS_BIT_32);
		}

		FUNC2(chip, WRITE_REG_CMD, SPI_LENGTH1, 0xFF,
			     (u8)(pagelen >> 8));
		FUNC2(chip, WRITE_REG_CMD, SPI_LENGTH0, 0xFF,
			     (u8)pagelen);

		FUNC2(chip, WRITE_REG_CMD, SPI_TRANSFER0, 0xFF,
			     SPI_TRANSFER0_START | SPI_CADI_MODE0);
		FUNC2(chip, CHECK_REG_CMD, SPI_TRANSFER0,
			     SPI_TRANSFER0_END, SPI_TRANSFER0_END);

		FUNC5(chip);

		retval = FUNC7(chip, 0, buf, pagelen, 0,
					    DMA_FROM_DEVICE, 10000);
		if (retval < 0) {
			FUNC0(buf);
			FUNC3(chip);
			FUNC9(chip, SPI_HW_ERR);
			return STATUS_FAIL;
		}

		FUNC6(buf, pagelen, srb, &index, &offset,
					  TO_XFER_BUF);

		addr += pagelen;
		len -= pagelen;
	}

	FUNC8(srb, 0);
	FUNC0(buf);

	return STATUS_SUCCESS;
}