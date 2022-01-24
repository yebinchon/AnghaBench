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
typedef  int /*<<< orphan*/  u8 ;
struct spi_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADT7316_REG_MAX_ADDR ; 
 int /*<<< orphan*/  ADT7316_SPI_CMD_READ ; 
 int /*<<< orphan*/  ADT7316_SPI_CMD_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct spi_device*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct spi_device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(void *client, u8 reg, u8 count, u8 *data)
{
	struct spi_device *spi_dev = client;
	u8 cmd[2];
	int ret;

	if (count > ADT7316_REG_MAX_ADDR)
		count = ADT7316_REG_MAX_ADDR;

	cmd[0] = ADT7316_SPI_CMD_WRITE;
	cmd[1] = reg;

	ret = FUNC1(spi_dev, cmd, 2);
	if (ret < 0) {
		FUNC0(&spi_dev->dev, "SPI fail to select reg\n");
		return ret;
	}

	cmd[0] = ADT7316_SPI_CMD_READ;

	ret = FUNC2(spi_dev, cmd, 1, data, count);
	if (ret < 0) {
		FUNC0(&spi_dev->dev, "SPI read data error\n");
		return ret;
	}

	return 0;
}