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
struct spi_device {scalar_t__ max_speed_hz; int /*<<< orphan*/  modalias; int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct adt7316_bus {int /*<<< orphan*/  multi_write; int /*<<< orphan*/  multi_read; int /*<<< orphan*/  (* write ) (struct spi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  read; int /*<<< orphan*/  irq; struct spi_device* client; } ;

/* Variables and functions */
 scalar_t__ ADT7316_SPI_MAX_FREQ_HZ ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,struct adt7316_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adt7316_spi_multi_read ; 
 int /*<<< orphan*/  adt7316_spi_multi_write ; 
 int /*<<< orphan*/  adt7316_spi_read ; 
 int /*<<< orphan*/  FUNC1 (struct spi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct spi_device *spi_dev)
{
	struct adt7316_bus bus = {
		.client = spi_dev,
		.irq = spi_dev->irq,
		.read = adt7316_spi_read,
		.write = adt7316_spi_write,
		.multi_read = adt7316_spi_multi_read,
		.multi_write = adt7316_spi_multi_write,
	};

	/* don't exceed max specified SPI CLK frequency */
	if (spi_dev->max_speed_hz > ADT7316_SPI_MAX_FREQ_HZ) {
		FUNC2(&spi_dev->dev, "SPI CLK %d Hz?\n",
			spi_dev->max_speed_hz);
		return -EINVAL;
	}

	/* switch from default I2C protocol to SPI protocol */
	FUNC1(spi_dev, 0, 0);
	FUNC1(spi_dev, 0, 0);
	FUNC1(spi_dev, 0, 0);

	return FUNC0(&spi_dev->dev, &bus, spi_dev->modalias);
}