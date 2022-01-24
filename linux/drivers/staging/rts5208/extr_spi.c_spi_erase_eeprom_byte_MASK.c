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
typedef  int u16 ;
struct rtsx_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_DATA_SOURCE ; 
 int /*<<< orphan*/  CARD_GPIO_DIR ; 
 int /*<<< orphan*/  CHECK_REG_CMD ; 
 int RING_BUFFER ; 
 int /*<<< orphan*/  SPI_ADDR0 ; 
 int /*<<< orphan*/  SPI_ADDR1 ; 
 int SPI_CA_MODE0 ; 
 int /*<<< orphan*/  SPI_CA_NUMBER ; 
 int /*<<< orphan*/  SPI_COMMAND ; 
 int /*<<< orphan*/  SPI_TRANSFER0 ; 
 int SPI_TRANSFER0_END ; 
 int SPI_TRANSFER0_START ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  WRITE_REG_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*) ; 
 int FUNC2 (struct rtsx_chip*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (struct rtsx_chip*) ; 
 int FUNC5 (struct rtsx_chip*) ; 

int FUNC6(struct rtsx_chip *chip, u16 addr)
{
	int retval;

	retval = FUNC5(chip);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	retval = FUNC4(chip);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	FUNC1(chip);

	FUNC0(chip, WRITE_REG_CMD, CARD_GPIO_DIR, 0x01, 0);
	FUNC0(chip, WRITE_REG_CMD, CARD_DATA_SOURCE, 0x01, RING_BUFFER);
	FUNC0(chip, WRITE_REG_CMD, SPI_COMMAND, 0xFF, 0x07);
	FUNC0(chip, WRITE_REG_CMD, SPI_ADDR0, 0xFF, (u8)addr);
	FUNC0(chip, WRITE_REG_CMD, SPI_ADDR1, 0xFF, (u8)(addr >> 8));
	FUNC0(chip, WRITE_REG_CMD, SPI_CA_NUMBER, 0xFF, 0x46);
	FUNC0(chip, WRITE_REG_CMD, SPI_TRANSFER0, 0xFF,
		     SPI_TRANSFER0_START | SPI_CA_MODE0);
	FUNC0(chip, CHECK_REG_CMD, SPI_TRANSFER0, SPI_TRANSFER0_END,
		     SPI_TRANSFER0_END);

	retval = FUNC2(chip, 0, 100);
	if (retval < 0)
		return STATUS_FAIL;

	retval = FUNC3(chip, CARD_GPIO_DIR, 0x01, 0x01);
	if (retval)
		return retval;

	return STATUS_SUCCESS;
}