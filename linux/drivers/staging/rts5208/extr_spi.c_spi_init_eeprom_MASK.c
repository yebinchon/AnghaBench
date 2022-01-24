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
struct rtsx_chip {scalar_t__ asic_code; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_CLK_EN ; 
 int /*<<< orphan*/  CARD_OE ; 
 int CLK_30 ; 
 int CS_POLARITY_HIGH ; 
 int EDO_TIMING_MASK ; 
 int SAMPLE_DELAY_HALF ; 
 int /*<<< orphan*/  SPI_CARD ; 
 int /*<<< orphan*/  SPI_CLK_DIVIDER0 ; 
 int /*<<< orphan*/  SPI_CLK_DIVIDER1 ; 
 int SPI_CLK_EN ; 
 int /*<<< orphan*/  SPI_CONTROL ; 
 int SPI_EEPROM_AUTO ; 
 int SPI_OUTPUT_EN ; 
 int /*<<< orphan*/  SPI_TCTL ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int FUNC0 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rtsx_chip*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct rtsx_chip *chip)
{
	int retval;
	int clk;

	if (chip->asic_code)
		clk = 30;
	else
		clk = CLK_30;

	retval = FUNC0(chip, SPI_CLK_DIVIDER1, 0xFF, 0x00);
	if (retval)
		return retval;
	retval = FUNC0(chip, SPI_CLK_DIVIDER0, 0xFF, 0x27);
	if (retval)
		return retval;

	retval = FUNC2(chip, clk);
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

	FUNC3(10);

	retval = FUNC0(chip, SPI_CONTROL, 0xFF,
				     CS_POLARITY_HIGH | SPI_EEPROM_AUTO);
	if (retval)
		return retval;
	retval = FUNC0(chip, SPI_TCTL, EDO_TIMING_MASK,
				     SAMPLE_DELAY_HALF);
	if (retval)
		return retval;

	return STATUS_SUCCESS;
}