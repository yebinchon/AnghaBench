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
 int /*<<< orphan*/  MASK_SYNC_CONFIG_SYNC_SIZE ; 
 int /*<<< orphan*/  REG_SYNC_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct spi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC2(struct spi_device *spi, u8 sync_size)
{
	// check input value
	if (sync_size > 0x07) {
		FUNC0(&spi->dev, "set: illegal input param");
		return -EINVAL;
	}

	// write value
	return FUNC1(spi, REG_SYNC_CONFIG,
				   MASK_SYNC_CONFIG_SYNC_SIZE,
				   (sync_size << 3));
}