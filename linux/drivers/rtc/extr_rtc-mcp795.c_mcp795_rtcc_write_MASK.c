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
typedef  scalar_t__ u8 ;
struct spi_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ MCP795_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__*,scalar_t__) ; 
 int FUNC2 (struct spi_device*,scalar_t__*,scalar_t__) ; 
 struct spi_device* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, u8 addr, u8 *data, u8 count)
{
	struct spi_device *spi = FUNC3(dev);
	int ret;
	u8 tx[257];

	tx[0] = MCP795_WRITE;
	tx[1] = addr;
	FUNC1(&tx[2], data, count);

	ret = FUNC2(spi, tx, 2 + count);

	if (ret)
		FUNC0(dev, "Failed to write %d bytes to address %x.\n",
					count, addr);

	return ret;
}