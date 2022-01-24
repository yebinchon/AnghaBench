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
struct scsi_cmnd {int* cmnd; } ;
struct rtsx_chip {int dummy; } ;

/* Variables and functions */
 int CHIP_ERASE ; 
 int PAGE_ERASE ; 
 int /*<<< orphan*/  SPI_HW_ERR ; 
 int /*<<< orphan*/  SPI_INVALID_COMMAND ; 
 int /*<<< orphan*/  SPI_NO_ERR ; 
 int /*<<< orphan*/  SPI_WREN ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int FUNC0 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rtsx_chip*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct rtsx_chip*) ; 

int FUNC4(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
	int retval;
	u8 ins, erase_mode;
	u32 addr;

	FUNC2(chip, SPI_NO_ERR);

	ins = srb->cmnd[3];
	addr = ((u32)(srb->cmnd[4]) << 16) | ((u32)(srb->cmnd[5])
					<< 8) | srb->cmnd[6];
	erase_mode = srb->cmnd[9];

	retval = FUNC3(chip);
	if (retval != STATUS_SUCCESS) {
		FUNC2(chip, SPI_HW_ERR);
		return STATUS_FAIL;
	}

	if (erase_mode == PAGE_ERASE) {
		retval = FUNC0(chip, SPI_WREN);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;

		retval = FUNC1(chip, ins, 1, addr);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;
	} else if (erase_mode == CHIP_ERASE) {
		retval = FUNC0(chip, SPI_WREN);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;

		retval = FUNC1(chip, ins, 0, 0);
		if (retval != STATUS_SUCCESS)
			return STATUS_FAIL;
	} else {
		FUNC2(chip, SPI_INVALID_COMMAND);
		return STATUS_FAIL;
	}

	return STATUS_SUCCESS;
}