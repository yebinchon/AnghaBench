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
struct spi_info {int /*<<< orphan*/  write_en; } ;
struct rtsx_chip {struct spi_info spi; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECK_REG_CMD ; 
 int SPI_ADDRESS_BIT_24 ; 
 int /*<<< orphan*/  SPI_CA_NUMBER ; 
 int /*<<< orphan*/  SPI_COMMAND ; 
 int SPI_COMMAND_BIT_8 ; 
 int SPI_C_MODE0 ; 
 int /*<<< orphan*/  SPI_HW_ERR ; 
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

__attribute__((used)) static int FUNC5(struct rtsx_chip *chip, u8 ins)
{
	struct spi_info *spi = &chip->spi;
	int retval;

	if (!spi->write_en)
		return STATUS_SUCCESS;

	FUNC2(chip);

	FUNC0(chip, WRITE_REG_CMD, SPI_COMMAND, 0xFF, ins);
	FUNC0(chip, WRITE_REG_CMD, SPI_CA_NUMBER, 0xFF,
		     SPI_COMMAND_BIT_8 | SPI_ADDRESS_BIT_24);
	FUNC0(chip, WRITE_REG_CMD, SPI_TRANSFER0, 0xFF,
		     SPI_TRANSFER0_START | SPI_C_MODE0);
	FUNC0(chip, CHECK_REG_CMD, SPI_TRANSFER0, SPI_TRANSFER0_END,
		     SPI_TRANSFER0_END);

	retval = FUNC3(chip, 0, 100);
	if (retval < 0) {
		FUNC1(chip);
		FUNC4(chip, SPI_HW_ERR);
		return STATUS_FAIL;
	}

	return STATUS_SUCCESS;
}