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
struct spi_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MASK_FIFO_THRESH_VALUE ; 
 int /*<<< orphan*/  REG_FIFO_THRESH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct spi_device*,int*,int) ; 
 int FUNC2 (struct spi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct spi_device *spi, u8 threshold)
{
	int retval;

	/* check input value */
	if (threshold & 0x80) {
		FUNC0(&spi->dev, "set: illegal input param");
		return -EINVAL;
	}

	/* write value */
	retval = FUNC2(spi, REG_FIFO_THRESH,
				     MASK_FIFO_THRESH_VALUE,
				     threshold);
	if (retval)
		return retval;

	/*
	 * access the fifo to activate new threshold
	 * retval (mis-) used as buffer here
	 */
	return FUNC1(spi, (u8 *)&retval, 1);
}