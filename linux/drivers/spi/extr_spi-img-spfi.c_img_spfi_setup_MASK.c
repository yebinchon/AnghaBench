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
struct spi_device {int mode; int /*<<< orphan*/  cs_gpio; int /*<<< orphan*/  dev; } ;
struct img_spfi_device_data {int gpio_requested; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GPIOF_OUT_INIT_HIGH ; 
 int GPIOF_OUT_INIT_LOW ; 
 int SPI_CS_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct img_spfi_device_data* FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct img_spfi_device_data* FUNC6 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct spi_device*,struct img_spfi_device_data*) ; 

__attribute__((used)) static int FUNC8(struct spi_device *spi)
{
	int ret = -EINVAL;
	struct img_spfi_device_data *spfi_data = FUNC6(spi);

	if (!spfi_data) {
		spfi_data = FUNC5(sizeof(*spfi_data), GFP_KERNEL);
		if (!spfi_data)
			return -ENOMEM;
		spfi_data->gpio_requested = false;
		FUNC7(spi, spfi_data);
	}
	if (!spfi_data->gpio_requested) {
		ret = FUNC4(spi->cs_gpio,
				       (spi->mode & SPI_CS_HIGH) ?
				       GPIOF_OUT_INIT_LOW : GPIOF_OUT_INIT_HIGH,
				       FUNC1(&spi->dev));
		if (ret)
			FUNC0(&spi->dev, "can't request chipselect gpio %d\n",
				spi->cs_gpio);
		else
			spfi_data->gpio_requested = true;
	} else {
		if (FUNC3(spi->cs_gpio)) {
			int mode = ((spi->mode & SPI_CS_HIGH) ?
				    GPIOF_OUT_INIT_LOW : GPIOF_OUT_INIT_HIGH);

			ret = FUNC2(spi->cs_gpio, mode);
			if (ret)
				FUNC0(&spi->dev, "chipselect gpio %d setup failed (%d)\n",
					spi->cs_gpio, ret);
		}
	}
	return ret;
}