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
struct spi_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int F_OSC ; 
 int /*<<< orphan*/  REG_BITRATE_LSB ; 
 int /*<<< orphan*/  REG_BITRATE_MSB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct spi_device*,int /*<<< orphan*/ ,int) ; 

int FUNC2(struct spi_device *spi, u16 bit_rate)
{
	int retval;
	u32 bit_rate_min;
	u32 bit_rate_reg;
	u8 msb;
	u8 lsb;

	// check input value
	bit_rate_min = F_OSC / 8388608; // 8388608 = 2^23;
	if (bit_rate < bit_rate_min) {
		FUNC0(&spi->dev, "setBitRate: illegal input param");
		return -EINVAL;
	}

	// calculate reg settings
	bit_rate_reg = (F_OSC / bit_rate);

	msb = (bit_rate_reg & 0xff00) >> 8;
	lsb = (bit_rate_reg & 0xff);

	// transmit to RF 69
	retval = FUNC1(spi, REG_BITRATE_MSB, msb);
	if (retval)
		return retval;
	retval = FUNC1(spi, REG_BITRATE_LSB, lsb);
	if (retval)
		return retval;

	return 0;
}