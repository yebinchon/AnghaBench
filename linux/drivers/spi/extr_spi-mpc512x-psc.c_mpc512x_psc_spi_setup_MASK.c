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
struct spi_device {int bits_per_word; int mode; int /*<<< orphan*/  max_speed_hz; struct mpc512x_psc_spi_cs* controller_state; int /*<<< orphan*/  cs_gpio; int /*<<< orphan*/  dev; } ;
struct mpc512x_psc_spi_cs {int bits_per_word; int /*<<< orphan*/  speed_hz; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SPI_CS_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mpc512x_psc_spi_cs*) ; 
 struct mpc512x_psc_spi_cs* FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct spi_device *spi)
{
	struct mpc512x_psc_spi_cs *cs = spi->controller_state;
	int ret;

	if (spi->bits_per_word % 8)
		return -EINVAL;

	if (!cs) {
		cs = FUNC6(sizeof *cs, GFP_KERNEL);
		if (!cs)
			return -ENOMEM;

		if (FUNC3(spi->cs_gpio)) {
			ret = FUNC4(spi->cs_gpio, FUNC1(&spi->dev));
			if (ret) {
				FUNC0(&spi->dev, "can't get CS gpio: %d\n",
					ret);
				FUNC5(cs);
				return ret;
			}
			FUNC2(spi->cs_gpio,
					spi->mode & SPI_CS_HIGH ? 0 : 1);
		}

		spi->controller_state = cs;
	}

	cs->bits_per_word = spi->bits_per_word;
	cs->speed_hz = spi->max_speed_hz;

	return 0;
}