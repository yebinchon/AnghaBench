#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct spi_device {scalar_t__ irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  mode; int /*<<< orphan*/  max_speed_hz; } ;
struct TYPE_3__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int num_channels; int /*<<< orphan*/  name; int /*<<< orphan*/ * info; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; TYPE_1__ dev; } ;
struct ad7280_state {int ctrl_hb; int slave_num; int scan_cnt; int cell_threshhigh; int aux_threshhigh; unsigned short readback_delay_us; int /*<<< orphan*/  channels; int /*<<< orphan*/  ctrl_lb; struct spi_device* spi; int /*<<< orphan*/  crc_tab; int /*<<< orphan*/  lock; } ;
struct ad7280_platform_data {int acquisition_time; int conversion_averaging; int chain_last_alert_ignore; scalar_t__ thermistor_term_en; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD7280A_ALERT ; 
 int AD7280A_ALERT_GEN_STATIC_HIGH ; 
 int AD7280A_ALERT_RELAY_SIG_CHAIN_DOWN ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int AD7280A_CTRL_LB_THERMISTOR_EN ; 
 int /*<<< orphan*/  AD7280A_DEVADDR_MASTER ; 
 int /*<<< orphan*/  AD7280A_MAX_SPI_CLK_HZ ; 
 int AD7280A_NUM_CH ; 
 unsigned short FUNC2 (unsigned short,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int /*<<< orphan*/  POLYNOM ; 
 int /*<<< orphan*/  SPI_MODE_1 ; 
 int FUNC3 (struct ad7280_state*) ; 
 int FUNC4 (struct ad7280_state*) ; 
 int FUNC5 (struct ad7280_state*) ; 
 int /*<<< orphan*/  ad7280_event_handler ; 
 int /*<<< orphan*/  ad7280_info ; 
 int /*<<< orphan*/  ad7280_sw_power_down ; 
 int FUNC6 (struct ad7280_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 struct ad7280_platform_data ad7793_default_pdata ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ad7280_platform_data* FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ad7280_state*) ; 
 struct iio_dev* FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 int FUNC13 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct iio_dev*) ; 
 struct ad7280_state* FUNC14 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC16 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct spi_device*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC18 (struct spi_device*) ; 

__attribute__((used)) static int FUNC19(struct spi_device *spi)
{
	const struct ad7280_platform_data *pdata = FUNC9(&spi->dev);
	struct ad7280_state *st;
	int ret;
	const unsigned short t_acq_ns[4] = {465, 1010, 1460, 1890};
	const unsigned short n_avg[4] = {1, 2, 4, 8};
	struct iio_dev *indio_dev;

	indio_dev = FUNC11(&spi->dev, sizeof(*st));
	if (!indio_dev)
		return -ENOMEM;

	st = FUNC14(indio_dev);
	FUNC17(spi, indio_dev);
	st->spi = spi;
	FUNC15(&st->lock);

	if (!pdata)
		pdata = &ad7793_default_pdata;

	FUNC8(st->crc_tab, POLYNOM);

	st->spi->max_speed_hz = AD7280A_MAX_SPI_CLK_HZ;
	st->spi->mode = SPI_MODE_1;
	FUNC18(st->spi);

	st->ctrl_lb = FUNC1(pdata->acquisition_time & 0x3);
	st->ctrl_hb = FUNC0(pdata->conversion_averaging
			& 0x3) | (pdata->thermistor_term_en ?
			AD7280A_CTRL_LB_THERMISTOR_EN : 0);

	ret = FUNC4(st);
	if (ret < 0)
		return ret;

	st->slave_num = ret;
	st->scan_cnt = (st->slave_num + 1) * AD7280A_NUM_CH;
	st->cell_threshhigh = 0xFF;
	st->aux_threshhigh = 0xFF;

	ret = FUNC10(&spi->dev, ad7280_sw_power_down, st);
	if (ret)
		return ret;

	/*
	 * Total Conversion Time = ((tACQ + tCONV) *
	 *			   (Number of Conversions per Part)) −
	 *			   tACQ + ((N - 1) * tDELAY)
	 *
	 * Readback Delay = Total Conversion Time + tWAIT
	 */

	st->readback_delay_us =
		((t_acq_ns[pdata->acquisition_time & 0x3] + 695) *
		 (AD7280A_NUM_CH * n_avg[pdata->conversion_averaging & 0x3])) -
		t_acq_ns[pdata->acquisition_time & 0x3] + st->slave_num * 250;

	/* Convert to usecs */
	st->readback_delay_us = FUNC2(st->readback_delay_us, 1000);
	st->readback_delay_us += 5; /* Add tWAIT */

	indio_dev->name = FUNC16(spi)->name;
	indio_dev->dev.parent = &spi->dev;
	indio_dev->modes = INDIO_DIRECT_MODE;

	ret = FUNC5(st);
	if (ret < 0)
		return ret;

	indio_dev->num_channels = ret;
	indio_dev->channels = st->channels;
	indio_dev->info = &ad7280_info;

	ret = FUNC3(st);
	if (ret < 0)
		return ret;

	ret = FUNC12(&spi->dev, indio_dev);
	if (ret)
		return ret;

	if (spi->irq > 0) {
		ret = FUNC6(st, AD7280A_DEVADDR_MASTER,
				   AD7280A_ALERT, 1,
				   AD7280A_ALERT_RELAY_SIG_CHAIN_DOWN);
		if (ret)
			return ret;

		ret = FUNC6(st, FUNC7(st->slave_num),
				   AD7280A_ALERT, 0,
				   AD7280A_ALERT_GEN_STATIC_HIGH |
				   (pdata->chain_last_alert_ignore & 0xF));
		if (ret)
			return ret;

		ret = FUNC13(&spi->dev, spi->irq,
						NULL,
						ad7280_event_handler,
						IRQF_TRIGGER_FALLING |
						IRQF_ONESHOT,
						indio_dev->name,
						indio_dev);
		if (ret)
			return ret;
	}

	return 0;
}