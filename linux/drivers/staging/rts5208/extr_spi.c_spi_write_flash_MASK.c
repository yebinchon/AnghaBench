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
 int AAI_PROGRAM ; 
 int BYTE_PROGRAM ; 
 int /*<<< orphan*/  CARD_DATA_SOURCE ; 
 int /*<<< orphan*/  DMA_256 ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FROM_XFER_BUF ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_PROGRAM ; 
 int PINGPONG_BUFFER ; 
 int /*<<< orphan*/  PPBUF_BASE2 ; 
 int SF_PAGE_LEN ; 
 int /*<<< orphan*/  SPI_HW_ERR ; 
 int /*<<< orphan*/  SPI_INVALID_COMMAND ; 
 int /*<<< orphan*/  SPI_NO_ERR ; 
 int /*<<< orphan*/  SPI_WRDI ; 
 int /*<<< orphan*/  SPI_WREN ; 
 int STATUS_ERROR ; 
 int STATUS_FAIL ; 
 int STATUS_NOMEM ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  WRITE_REG_CMD ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_chip*) ; 
 int FUNC5 (struct rtsx_chip*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC7 (int*,int,struct scsi_cmnd*,unsigned int*,unsigned int*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct rtsx_chip*,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct rtsx_chip*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct rtsx_chip*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct rtsx_chip*,int,int /*<<< orphan*/ ) ; 

int FUNC16(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
	int retval;
	u8 ins, program_mode;
	u32 addr;
	u16 len;
	u8 *buf;
	unsigned int index = 0, offset = 0;

	FUNC13(chip, SPI_NO_ERR);

	ins = srb->cmnd[3];
	addr = ((u32)(srb->cmnd[4]) << 16) | ((u32)(srb->cmnd[5])
					<< 8) | srb->cmnd[6];
	len = ((u16)(srb->cmnd[7]) << 8) | srb->cmnd[8];
	program_mode = srb->cmnd[9];

	retval = FUNC14(chip);
	if (retval != STATUS_SUCCESS) {
		FUNC13(chip, SPI_HW_ERR);
		return STATUS_FAIL;
	}

	if (program_mode == BYTE_PROGRAM) {
		buf = FUNC1(4, GFP_KERNEL);
		if (!buf)
			return STATUS_ERROR;

		while (len) {
			retval = FUNC10(chip, SPI_WREN);
			if (retval != STATUS_SUCCESS) {
				FUNC0(buf);
				return STATUS_FAIL;
			}

			FUNC7(buf, 1, srb, &index, &offset,
						  FROM_XFER_BUF);

			FUNC4(chip);

			FUNC2(chip, WRITE_REG_CMD, CARD_DATA_SOURCE,
				     0x01, PINGPONG_BUFFER);
			FUNC2(chip, WRITE_REG_CMD, PPBUF_BASE2, 0xFF,
				     buf[0]);
			FUNC12(chip, ins, 1, addr, 1);

			retval = FUNC5(chip, 0, 100);
			if (retval < 0) {
				FUNC0(buf);
				FUNC3(chip);
				FUNC13(chip, SPI_HW_ERR);
				return STATUS_FAIL;
			}

			retval = FUNC11(chip, 100);
			if (retval != STATUS_SUCCESS) {
				FUNC0(buf);
				return STATUS_FAIL;
			}

			addr++;
			len--;
		}

		FUNC0(buf);

	} else if (program_mode == AAI_PROGRAM) {
		int first_byte = 1;

		retval = FUNC10(chip, SPI_WREN);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;

		buf = FUNC1(4, GFP_KERNEL);
		if (!buf)
			return STATUS_ERROR;

		while (len) {
			FUNC7(buf, 1, srb, &index, &offset,
						  FROM_XFER_BUF);

			FUNC4(chip);

			FUNC2(chip, WRITE_REG_CMD, CARD_DATA_SOURCE,
				     0x01, PINGPONG_BUFFER);
			FUNC2(chip, WRITE_REG_CMD, PPBUF_BASE2, 0xFF,
				     buf[0]);
			if (first_byte) {
				FUNC12(chip, ins, 1, addr, 1);
				first_byte = 0;
			} else {
				FUNC12(chip, ins, 0, 0, 1);
			}

			retval = FUNC5(chip, 0, 100);
			if (retval < 0) {
				FUNC0(buf);
				FUNC3(chip);
				FUNC13(chip, SPI_HW_ERR);
				return STATUS_FAIL;
			}

			retval = FUNC11(chip, 100);
			if (retval != STATUS_SUCCESS) {
				FUNC0(buf);
				return STATUS_FAIL;
			}

			len--;
		}

		FUNC0(buf);

		retval = FUNC9(chip, SPI_WRDI);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;

		retval = FUNC11(chip, 100);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;
	} else if (program_mode == PAGE_PROGRAM) {
		buf = FUNC1(SF_PAGE_LEN, GFP_KERNEL);
		if (!buf)
			return STATUS_NOMEM;

		while (len) {
			u16 pagelen = SF_PAGE_LEN - (u8)addr;

			if (pagelen > len)
				pagelen = len;

			retval = FUNC10(chip, SPI_WREN);
			if (retval != STATUS_SUCCESS) {
				FUNC0(buf);
				return STATUS_FAIL;
			}

			FUNC4(chip);

			FUNC15(DMA_TO_DEVICE, chip, 256, DMA_256);
			FUNC12(chip, ins, 1, addr, pagelen);

			FUNC6(chip);

			FUNC7(buf, pagelen, srb, &index,
						  &offset, FROM_XFER_BUF);

			retval = FUNC8(chip, 0, buf, pagelen, 0,
						    DMA_TO_DEVICE, 100);
			if (retval < 0) {
				FUNC0(buf);
				FUNC3(chip);
				FUNC13(chip, SPI_HW_ERR);
				return STATUS_FAIL;
			}

			retval = FUNC11(chip, 100);
			if (retval != STATUS_SUCCESS) {
				FUNC0(buf);
				return STATUS_FAIL;
			}

			addr += pagelen;
			len -= pagelen;
		}

		FUNC0(buf);
	} else {
		FUNC13(chip, SPI_INVALID_COMMAND);
		return STATUS_FAIL;
	}

	return STATUS_SUCCESS;
}