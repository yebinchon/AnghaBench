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
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct spi_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int F_OSC ; 
 int /*<<< orphan*/  REG_FRF_LSB ; 
 int /*<<< orphan*/  REG_FRF_MID ; 
 int /*<<< orphan*/  REG_FRF_MSB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int FUNC3 (struct spi_device*,int /*<<< orphan*/ ,int) ; 

int FUNC4(struct spi_device *spi, u32 frequency)
{
	int retval;
	u32 f_max;
	u64 f_reg;
	u64 f_step;
	u8 msb;
	u8 mid;
	u8 lsb;
	u64 factor = 1000000; // to improve precision of calculation

	// calculat f step
	f_step = F_OSC * factor;
	FUNC2(f_step, 524288); //  524288 = 2^19

	// check input value
	f_max = FUNC1(f_step * 8388608, factor);
	if (frequency > f_max) {
		FUNC0(&spi->dev, "setFrequency: illegal input param");
		return -EINVAL;
	}

	// calculate reg settings
	f_reg = frequency * factor;
	FUNC2(f_reg, f_step);

	msb = (f_reg & 0xff0000) >> 16;
	mid = (f_reg & 0xff00)   >>  8;
	lsb = (f_reg & 0xff);

	// write to chip
	retval = FUNC3(spi, REG_FRF_MSB, msb);
	if (retval)
		return retval;
	retval = FUNC3(spi, REG_FRF_MID, mid);
	if (retval)
		return retval;
	retval = FUNC3(spi, REG_FRF_LSB, lsb);
	if (retval)
		return retval;

	return 0;
}