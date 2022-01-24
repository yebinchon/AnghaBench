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
typedef  enum fifo_fill_condition { ____Placeholder_fifo_fill_condition } fifo_fill_condition ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MASK_SYNC_CONFIG_FIFO_FILL_CONDITION ; 
 int /*<<< orphan*/  REG_SYNC_CONFIG ; 
#define  after_sync_interrupt 129 
#define  always 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct spi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct spi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct spi_device *spi,
				 enum fifo_fill_condition fifo_fill_condition)
{
	switch (fifo_fill_condition) {
	case always:
		return FUNC2(spi, REG_SYNC_CONFIG,
				    MASK_SYNC_CONFIG_FIFO_FILL_CONDITION);
	case after_sync_interrupt:
		return FUNC1(spi, REG_SYNC_CONFIG,
				      MASK_SYNC_CONFIG_FIFO_FILL_CONDITION);
	default:
		FUNC0(&spi->dev, "set: illegal input param");
		return -EINVAL;
	}
}