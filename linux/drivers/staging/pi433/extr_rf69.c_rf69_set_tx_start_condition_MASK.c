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
struct spi_device {int /*<<< orphan*/  dev; } ;
typedef  enum tx_start_condition { ____Placeholder_tx_start_condition } tx_start_condition ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MASK_FIFO_THRESH_TXSTART ; 
 int /*<<< orphan*/  REG_FIFO_THRESH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
#define  fifo_level 129 
#define  fifo_not_empty 128 
 int FUNC1 (struct spi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct spi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct spi_device *spi,
				enum tx_start_condition tx_start_condition)
{
	switch (tx_start_condition) {
	case fifo_level:
		return FUNC1(spi, REG_FIFO_THRESH,
				      MASK_FIFO_THRESH_TXSTART);
	case fifo_not_empty:
		return FUNC2(spi, REG_FIFO_THRESH,
				    MASK_FIFO_THRESH_TXSTART);
	default:
		FUNC0(&spi->dev, "set: illegal input param");
		return -EINVAL;
	}
}