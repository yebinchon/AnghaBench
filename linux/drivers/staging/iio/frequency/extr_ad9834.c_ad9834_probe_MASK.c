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
struct regulator {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct TYPE_5__ {int len; int cs_change; int /*<<< orphan*/ * tx_buf; } ;
struct ad9834_state {int devid; int control; int /*<<< orphan*/  mclk; int /*<<< orphan*/  msg; struct spi_device* spi; int /*<<< orphan*/  data; int /*<<< orphan*/  freq_msg; TYPE_2__* freq_xfer; int /*<<< orphan*/ * freq_data; TYPE_2__ xfer; struct regulator* reg; int /*<<< orphan*/  lock; } ;
struct TYPE_6__ {int driver_data; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int AD9834_B28 ; 
 int AD9834_DIV2 ; 
 int AD9834_REG_CMD ; 
 int /*<<< orphan*/  AD9834_REG_FREQ0 ; 
 int /*<<< orphan*/  AD9834_REG_FREQ1 ; 
 int /*<<< orphan*/  AD9834_REG_PHASE0 ; 
 int /*<<< orphan*/  AD9834_REG_PHASE1 ; 
 int AD9834_RESET ; 
 int AD9834_SIGN_PIB ; 
 int ENOMEM ; 
#define  ID_AD9833 129 
 int ID_AD9834 ; 
#define  ID_AD9837 128 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC0 (struct regulator*) ; 
 int FUNC1 (struct regulator*) ; 
 int /*<<< orphan*/  ad9833_info ; 
 int /*<<< orphan*/  ad9834_info ; 
 int FUNC2 (struct ad9834_state*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct ad9834_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct iio_dev* FUNC9 (int /*<<< orphan*/ *,int) ; 
 struct regulator* FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int FUNC11 (struct iio_dev*) ; 
 struct ad9834_state* FUNC12 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct regulator*) ; 
 int FUNC15 (struct regulator*) ; 
 TYPE_3__* FUNC16 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct spi_device*,struct iio_dev*) ; 
 int FUNC20 (struct spi_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC21(struct spi_device *spi)
{
	struct ad9834_state *st;
	struct iio_dev *indio_dev;
	struct regulator *reg;
	int ret;


	reg = FUNC10(&spi->dev, "avdd");
	if (FUNC0(reg))
		return FUNC1(reg);

	ret = FUNC15(reg);
	if (ret) {
		FUNC7(&spi->dev, "Failed to enable specified AVDD supply\n");
		return ret;
	}

	indio_dev = FUNC9(&spi->dev, sizeof(*st));
	if (!indio_dev) {
		ret = -ENOMEM;
		goto error_disable_reg;
	}
	FUNC19(spi, indio_dev);
	st = FUNC12(indio_dev);
	FUNC13(&st->lock);
	st->mclk = FUNC8(&spi->dev, NULL);

	ret = FUNC5(st->mclk);
	if (ret) {
		FUNC7(&spi->dev, "Failed to enable master clock\n");
		goto error_disable_reg;
	}

	st->spi = spi;
	st->devid = FUNC16(spi)->driver_data;
	st->reg = reg;
	indio_dev->dev.parent = &spi->dev;
	indio_dev->name = FUNC16(spi)->name;
	switch (st->devid) {
	case ID_AD9833:
	case ID_AD9837:
		indio_dev->info = &ad9833_info;
		break;
	default:
		indio_dev->info = &ad9834_info;
		break;
	}
	indio_dev->modes = INDIO_DIRECT_MODE;

	/* Setup default messages */

	st->xfer.tx_buf = &st->data;
	st->xfer.len = 2;

	FUNC18(&st->msg);
	FUNC17(&st->xfer, &st->msg);

	st->freq_xfer[0].tx_buf = &st->freq_data[0];
	st->freq_xfer[0].len = 2;
	st->freq_xfer[0].cs_change = 1;
	st->freq_xfer[1].tx_buf = &st->freq_data[1];
	st->freq_xfer[1].len = 2;

	FUNC18(&st->freq_msg);
	FUNC17(&st->freq_xfer[0], &st->freq_msg);
	FUNC17(&st->freq_xfer[1], &st->freq_msg);

	st->control = AD9834_B28 | AD9834_RESET;
	st->control |= AD9834_DIV2;

	if (st->devid == ID_AD9834)
		st->control |= AD9834_SIGN_PIB;

	st->data = FUNC6(AD9834_REG_CMD | st->control);
	ret = FUNC20(st->spi, &st->msg);
	if (ret) {
		FUNC7(&spi->dev, "device init failed\n");
		goto error_clock_unprepare;
	}

	ret = FUNC2(st, AD9834_REG_FREQ0, 1000000);
	if (ret)
		goto error_clock_unprepare;

	ret = FUNC2(st, AD9834_REG_FREQ1, 5000000);
	if (ret)
		goto error_clock_unprepare;

	ret = FUNC3(st, AD9834_REG_PHASE0, 512);
	if (ret)
		goto error_clock_unprepare;

	ret = FUNC3(st, AD9834_REG_PHASE1, 1024);
	if (ret)
		goto error_clock_unprepare;

	ret = FUNC11(indio_dev);
	if (ret)
		goto error_clock_unprepare;

	return 0;
error_clock_unprepare:
	FUNC4(st->mclk);
error_disable_reg:
	FUNC14(reg);

	return ret;
}