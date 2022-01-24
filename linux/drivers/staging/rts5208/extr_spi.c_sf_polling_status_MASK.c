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
struct rtsx_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECK_REG_CMD ; 
 int /*<<< orphan*/  SPI_BUSY_ERR ; 
 int /*<<< orphan*/  SPI_COMMAND ; 
 int SPI_POLLING_MODE0 ; 
 int SPI_RDSR ; 
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
 int /*<<< orphan*/  FUNC4 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct rtsx_chip *chip, int msec)
{
	int retval;

	FUNC2(chip);

	FUNC0(chip, WRITE_REG_CMD, SPI_COMMAND, 0xFF, SPI_RDSR);
	FUNC0(chip, WRITE_REG_CMD, SPI_TRANSFER0, 0xFF,
		     SPI_TRANSFER0_START | SPI_POLLING_MODE0);
	FUNC0(chip, CHECK_REG_CMD, SPI_TRANSFER0, SPI_TRANSFER0_END,
		     SPI_TRANSFER0_END);

	retval = FUNC3(chip, 0, msec);
	if (retval < 0) {
		FUNC1(chip);
		FUNC4(chip, SPI_BUSY_ERR);
		return STATUS_FAIL;
	}

	return STATUS_SUCCESS;
}