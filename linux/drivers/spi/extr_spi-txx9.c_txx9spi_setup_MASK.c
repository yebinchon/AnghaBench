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
struct txx9spi {int /*<<< orphan*/  lock; } ;
struct spi_device {int max_speed_hz; int mode; int /*<<< orphan*/  dev; int /*<<< orphan*/  chip_select; int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int EINVAL ; 
 int NSEC_PER_SEC ; 
 int SPI_CS_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct txx9spi* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_device*,struct txx9spi*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct spi_device *spi)
{
	struct txx9spi *c = FUNC2(spi->master);

	if (!spi->max_speed_hz)
		return -EINVAL;

	if (FUNC1(spi->chip_select,
			!(spi->mode & SPI_CS_HIGH))) {
		FUNC0(&spi->dev, "Cannot setup GPIO for chipselect.\n");
		return -EINVAL;
	}

	/* deselect chip */
	FUNC3(&c->lock);
	FUNC5(spi, c, 0, (NSEC_PER_SEC / 2) / spi->max_speed_hz);
	FUNC4(&c->lock);

	return 0;
}