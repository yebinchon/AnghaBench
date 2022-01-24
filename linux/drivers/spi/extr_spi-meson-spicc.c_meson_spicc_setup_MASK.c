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
struct spi_device {int mode; int /*<<< orphan*/  cs_gpio; int /*<<< orphan*/  dev; int /*<<< orphan*/  master; scalar_t__ controller_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int SPI_CS_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct spi_device *spi)
{
	int ret = 0;

	if (!spi->controller_state)
		spi->controller_state = FUNC5(spi->master);
	else if (FUNC3(spi->cs_gpio))
		goto out_gpio;
	else if (spi->cs_gpio == -ENOENT)
		return 0;

	if (FUNC3(spi->cs_gpio)) {
		ret = FUNC4(spi->cs_gpio, FUNC1(&spi->dev));
		if (ret) {
			FUNC0(&spi->dev, "failed to request cs gpio\n");
			return ret;
		}
	}

out_gpio:
	ret = FUNC2(spi->cs_gpio,
			!(spi->mode & SPI_CS_HIGH));

	return ret;
}