#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct spi_device {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct TYPE_5__ {int len; int cs_change; int /*<<< orphan*/ * tx_buf; } ;
struct ad9832_state {int ctrl_src; void* avdd; void* dvdd; void* mclk; int /*<<< orphan*/  msg; struct spi_device* spi; int /*<<< orphan*/  data; int /*<<< orphan*/  phase_msg; TYPE_2__* phase_xfer; int /*<<< orphan*/ * phase_data; int /*<<< orphan*/  freq_msg; TYPE_2__* freq_xfer; int /*<<< orphan*/ * freq_data; TYPE_2__ xfer; int /*<<< orphan*/  lock; } ;
struct ad9832_platform_data {int /*<<< orphan*/  phase3; int /*<<< orphan*/  phase2; int /*<<< orphan*/  phase1; int /*<<< orphan*/  phase0; int /*<<< orphan*/  freq1; int /*<<< orphan*/  freq0; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int AD9832_CLR ; 
 int AD9832_CMD_SLEEPRESCLR ; 
 int /*<<< orphan*/  AD9832_FREQ0HM ; 
 int /*<<< orphan*/  AD9832_FREQ1HM ; 
 int /*<<< orphan*/  AD9832_PHASE0H ; 
 int /*<<< orphan*/  AD9832_PHASE1H ; 
 int /*<<< orphan*/  AD9832_PHASE2H ; 
 int /*<<< orphan*/  AD9832_PHASE3H ; 
 int AD9832_RESET ; 
 int AD9832_SLEEP ; 
 int CMD_SHIFT ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  ad9832_info ; 
 int FUNC2 (struct ad9832_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ad9832_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 struct ad9832_platform_data* FUNC9 (int /*<<< orphan*/ *) ; 
 void* FUNC10 (int /*<<< orphan*/ *,char*) ; 
 struct iio_dev* FUNC11 (int /*<<< orphan*/ *,int) ; 
 void* FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int FUNC13 (struct iio_dev*) ; 
 struct ad9832_state* FUNC14 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (void*) ; 
 int FUNC17 (void*) ; 
 TYPE_3__* FUNC18 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct spi_device*,struct iio_dev*) ; 
 int FUNC22 (struct spi_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC23(struct spi_device *spi)
{
	struct ad9832_platform_data *pdata = FUNC9(&spi->dev);
	struct iio_dev *indio_dev;
	struct ad9832_state *st;
	int ret;

	if (!pdata) {
		FUNC7(&spi->dev, "no platform data?\n");
		return -ENODEV;
	}

	indio_dev = FUNC11(&spi->dev, sizeof(*st));
	if (!indio_dev)
		return -ENOMEM;

	FUNC21(spi, indio_dev);
	st = FUNC14(indio_dev);

	st->avdd = FUNC12(&spi->dev, "avdd");
	if (FUNC0(st->avdd))
		return FUNC1(st->avdd);

	ret = FUNC17(st->avdd);
	if (ret) {
		FUNC8(&spi->dev, "Failed to enable specified AVDD supply\n");
		return ret;
	}

	st->dvdd = FUNC12(&spi->dev, "dvdd");
	if (FUNC0(st->dvdd)) {
		ret = FUNC1(st->dvdd);
		goto error_disable_avdd;
	}

	ret = FUNC17(st->dvdd);
	if (ret) {
		FUNC8(&spi->dev, "Failed to enable specified DVDD supply\n");
		goto error_disable_avdd;
	}

	st->mclk = FUNC10(&spi->dev, "mclk");
	if (FUNC0(st->mclk)) {
		ret = FUNC1(st->mclk);
		goto error_disable_dvdd;
	}

	ret = FUNC5(st->mclk);
	if (ret < 0)
		goto error_disable_dvdd;

	st->spi = spi;
	FUNC15(&st->lock);

	indio_dev->dev.parent = &spi->dev;
	indio_dev->name = FUNC18(spi)->name;
	indio_dev->info = &ad9832_info;
	indio_dev->modes = INDIO_DIRECT_MODE;

	/* Setup default messages */

	st->xfer.tx_buf = &st->data;
	st->xfer.len = 2;

	FUNC20(&st->msg);
	FUNC19(&st->xfer, &st->msg);

	st->freq_xfer[0].tx_buf = &st->freq_data[0];
	st->freq_xfer[0].len = 2;
	st->freq_xfer[0].cs_change = 1;
	st->freq_xfer[1].tx_buf = &st->freq_data[1];
	st->freq_xfer[1].len = 2;
	st->freq_xfer[1].cs_change = 1;
	st->freq_xfer[2].tx_buf = &st->freq_data[2];
	st->freq_xfer[2].len = 2;
	st->freq_xfer[2].cs_change = 1;
	st->freq_xfer[3].tx_buf = &st->freq_data[3];
	st->freq_xfer[3].len = 2;

	FUNC20(&st->freq_msg);
	FUNC19(&st->freq_xfer[0], &st->freq_msg);
	FUNC19(&st->freq_xfer[1], &st->freq_msg);
	FUNC19(&st->freq_xfer[2], &st->freq_msg);
	FUNC19(&st->freq_xfer[3], &st->freq_msg);

	st->phase_xfer[0].tx_buf = &st->phase_data[0];
	st->phase_xfer[0].len = 2;
	st->phase_xfer[0].cs_change = 1;
	st->phase_xfer[1].tx_buf = &st->phase_data[1];
	st->phase_xfer[1].len = 2;

	FUNC20(&st->phase_msg);
	FUNC19(&st->phase_xfer[0], &st->phase_msg);
	FUNC19(&st->phase_xfer[1], &st->phase_msg);

	st->ctrl_src = AD9832_SLEEP | AD9832_RESET | AD9832_CLR;
	st->data = FUNC6((AD9832_CMD_SLEEPRESCLR << CMD_SHIFT) |
					st->ctrl_src);
	ret = FUNC22(st->spi, &st->msg);
	if (ret) {
		FUNC8(&spi->dev, "device init failed\n");
		goto error_unprepare_mclk;
	}

	ret = FUNC2(st, AD9832_FREQ0HM, pdata->freq0);
	if (ret)
		goto error_unprepare_mclk;

	ret = FUNC2(st, AD9832_FREQ1HM, pdata->freq1);
	if (ret)
		goto error_unprepare_mclk;

	ret = FUNC3(st, AD9832_PHASE0H, pdata->phase0);
	if (ret)
		goto error_unprepare_mclk;

	ret = FUNC3(st, AD9832_PHASE1H, pdata->phase1);
	if (ret)
		goto error_unprepare_mclk;

	ret = FUNC3(st, AD9832_PHASE2H, pdata->phase2);
	if (ret)
		goto error_unprepare_mclk;

	ret = FUNC3(st, AD9832_PHASE3H, pdata->phase3);
	if (ret)
		goto error_unprepare_mclk;

	ret = FUNC13(indio_dev);
	if (ret)
		goto error_unprepare_mclk;

	return 0;

error_unprepare_mclk:
	FUNC4(st->mclk);
error_disable_dvdd:
	FUNC16(st->dvdd);
error_disable_avdd:
	FUNC16(st->avdd);

	return ret;
}