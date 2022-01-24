#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_7__ {scalar_t__ of_node; } ;
struct spi_device {int chip_select; int max_speed_hz; TYPE_3__ dev; int /*<<< orphan*/  cs_gpio; struct s3c64xx_spi_csinfo* controller_data; int /*<<< orphan*/  master; } ;
struct s3c64xx_spi_driver_data {TYPE_2__* pdev; int /*<<< orphan*/  src_clk; TYPE_1__* port_conf; } ;
struct s3c64xx_spi_csinfo {int /*<<< orphan*/  line; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  clk_from_cmu; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_HIGH ; 
 scalar_t__ FUNC0 (struct s3c64xx_spi_csinfo*) ; 
 int S3C64XX_SPI_PSR_MASK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct s3c64xx_spi_csinfo*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct s3c64xx_spi_csinfo* FUNC11 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct spi_device*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct spi_device*) ; 
 struct s3c64xx_spi_driver_data* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct spi_device*,struct s3c64xx_spi_csinfo*) ; 

__attribute__((used)) static int FUNC16(struct spi_device *spi)
{
	struct s3c64xx_spi_csinfo *cs = spi->controller_data;
	struct s3c64xx_spi_driver_data *sdd;
	int err;

	sdd = FUNC14(spi->master);
	if (spi->dev.of_node) {
		cs = FUNC11(spi);
		spi->controller_data = cs;
	} else if (cs) {
		/* On non-DT platforms the SPI core will set spi->cs_gpio
		 * to -ENOENT. The GPIO pin used to drive the chip select
		 * is defined by using platform data so spi->cs_gpio value
		 * has to be override to have the proper GPIO pin number.
		 */
		spi->cs_gpio = cs->line;
	}

	if (FUNC0(cs)) {
		FUNC2(&spi->dev, "No CS for SPI(%d)\n", spi->chip_select);
		return -ENODEV;
	}

	if (!FUNC13(spi)) {
		if (FUNC5(spi->cs_gpio)) {
			err = FUNC6(spi->cs_gpio, GPIOF_OUT_INIT_HIGH,
					       FUNC3(&spi->dev));
			if (err) {
				FUNC2(&spi->dev,
					"Failed to get /CS gpio [%d]: %d\n",
					spi->cs_gpio, err);
				goto err_gpio_req;
			}
		}

		FUNC15(spi, cs);
	}

	FUNC8(&sdd->pdev->dev);

	/* Check if we can provide the requested rate */
	if (!sdd->port_conf->clk_from_cmu) {
		u32 psr, speed;

		/* Max possible */
		speed = FUNC1(sdd->src_clk) / 2 / (0 + 1);

		if (spi->max_speed_hz > speed)
			spi->max_speed_hz = speed;

		psr = FUNC1(sdd->src_clk) / 2 / spi->max_speed_hz - 1;
		psr &= S3C64XX_SPI_PSR_MASK;
		if (psr == S3C64XX_SPI_PSR_MASK)
			psr--;

		speed = FUNC1(sdd->src_clk) / 2 / (psr + 1);
		if (spi->max_speed_hz < speed) {
			if (psr+1 < S3C64XX_SPI_PSR_MASK) {
				psr++;
			} else {
				err = -EINVAL;
				goto setup_exit;
			}
		}

		speed = FUNC1(sdd->src_clk) / 2 / (psr + 1);
		if (spi->max_speed_hz >= speed) {
			spi->max_speed_hz = speed;
		} else {
			FUNC2(&spi->dev, "Can't set %dHz transfer speed\n",
				spi->max_speed_hz);
			err = -EINVAL;
			goto setup_exit;
		}
	}

	FUNC9(&sdd->pdev->dev);
	FUNC10(&sdd->pdev->dev);
	FUNC12(spi, false);

	return 0;

setup_exit:
	FUNC9(&sdd->pdev->dev);
	FUNC10(&sdd->pdev->dev);
	/* setup() returns with device de-selected */
	FUNC12(spi, false);

	if (FUNC5(spi->cs_gpio))
		FUNC4(spi->cs_gpio);
	FUNC15(spi, NULL);

err_gpio_req:
	if (spi->dev.of_node)
		FUNC7(cs);

	return err;
}