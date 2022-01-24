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
struct spi_info {int clk_div; int /*<<< orphan*/  spi_clock; } ;
struct rtsx_chip {struct spi_info spi; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_CLK_EN ; 
 int /*<<< orphan*/  CARD_OE ; 
 int /*<<< orphan*/  SPI_CARD ; 
 int /*<<< orphan*/  SPI_CLK_DIVIDER0 ; 
 int /*<<< orphan*/  SPI_CLK_DIVIDER1 ; 
 int SPI_CLK_EN ; 
 int SPI_OUTPUT_EN ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int FUNC0 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rtsx_chip*) ; 
 int FUNC3 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct rtsx_chip *chip)
{
	struct spi_info *spi = &chip->spi;
	int retval;

	retval = FUNC0(chip, SPI_CLK_DIVIDER1, 0xFF,
				     (u8)(spi->clk_div >> 8));
	if (retval)
		return retval;
	retval = FUNC0(chip, SPI_CLK_DIVIDER0, 0xFF,
				     (u8)(spi->clk_div));
	if (retval)
		return retval;

	retval = FUNC3(chip, spi->spi_clock);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	retval = FUNC1(chip, SPI_CARD);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	retval = FUNC0(chip, CARD_CLK_EN, SPI_CLK_EN,
				     SPI_CLK_EN);
	if (retval)
		return retval;
	retval = FUNC0(chip, CARD_OE, SPI_OUTPUT_EN,
				     SPI_OUTPUT_EN);
	if (retval)
		return retval;

	FUNC4(10);

	retval = FUNC2(chip);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	return STATUS_SUCCESS;
}