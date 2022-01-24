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
typedef  int u32 ;
struct spi_device {int /*<<< orphan*/  bits_per_word; int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int CFG_IOPADMODE_MASK ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int IOPAD_DUMB18SPI ; 
 int LCD_SPU_SPI_CTRL ; 
 int SPU_IOPAD_CONTROL ; 
 int FUNC5 (void*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,void*) ; 
 int /*<<< orphan*/  FUNC9 (int,void*) ; 

__attribute__((used)) static int FUNC10(struct spi_device *spi)
{
	void *reg_base =
		*(void **)FUNC6(spi->master);
	u32 tmp;

	tmp = FUNC0(16) |
		FUNC4(spi->bits_per_word) |
		FUNC3(1) | FUNC2(1) |
		FUNC1(1);
	FUNC8(tmp, reg_base + LCD_SPU_SPI_CTRL);

	/*
	 * After set mode it need a time to pull up the spi singals,
	 * or it would cause the wrong waveform when send spi command,
	 * especially on pxa910h
	 */
	tmp = FUNC5(reg_base + SPU_IOPAD_CONTROL);
	if ((tmp & CFG_IOPADMODE_MASK) != IOPAD_DUMB18SPI)
		FUNC9(IOPAD_DUMB18SPI |
			(tmp & ~CFG_IOPADMODE_MASK),
			reg_base + SPU_IOPAD_CONTROL);
	FUNC7(20);
	return 0;
}