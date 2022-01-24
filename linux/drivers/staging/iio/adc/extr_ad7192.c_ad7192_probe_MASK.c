#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  of_node; } ;
struct spi_device {TYPE_4__ dev; int /*<<< orphan*/  irq; } ;
struct TYPE_8__ {TYPE_4__* parent; } ;
struct iio_dev {int /*<<< orphan*/ * info; int /*<<< orphan*/  modes; int /*<<< orphan*/  name; TYPE_1__ dev; } ;
struct TYPE_12__ {TYPE_2__* spi; } ;
struct ad7192_state {int int_vref_mv; scalar_t__ devid; scalar_t__ clock_sel; void* avdd; void* dvdd; void* mclk; int /*<<< orphan*/  fclk; TYPE_7__ sd; int /*<<< orphan*/  lock; } ;
struct TYPE_10__ {scalar_t__ driver_data; int /*<<< orphan*/  name; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ AD7192_CLK_EXT_MCLK1_2 ; 
 scalar_t__ AD7192_CLK_EXT_MCLK2 ; 
 int /*<<< orphan*/  AD7192_INT_FREQ_MHZ ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOENT ; 
 int ENOMEM ; 
 scalar_t__ ID_AD7195 ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  ad7192_info ; 
 scalar_t__ FUNC3 (struct ad7192_state*) ; 
 int FUNC4 (struct ad7192_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ad7192_sigma_delta_info ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ad7195_info ; 
 int /*<<< orphan*/  FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,struct iio_dev*,struct spi_device*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,char*) ; 
 void* FUNC13 (int /*<<< orphan*/ *,char*) ; 
 struct iio_dev* FUNC14 (TYPE_4__*,int) ; 
 void* FUNC15 (TYPE_4__*,char*) ; 
 int FUNC16 (struct iio_dev*) ; 
 struct ad7192_state* FUNC17 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (void*) ; 
 int FUNC20 (void*) ; 
 int FUNC21 (void*) ; 
 TYPE_3__* FUNC22 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC24(struct spi_device *spi)
{
	struct ad7192_state *st;
	struct iio_dev *indio_dev;
	int ret, voltage_uv = 0;

	if (!spi->irq) {
		FUNC12(&spi->dev, "no IRQ?\n");
		return -ENODEV;
	}

	indio_dev = FUNC14(&spi->dev, sizeof(*st));
	if (!indio_dev)
		return -ENOMEM;

	st = FUNC17(indio_dev);

	FUNC18(&st->lock);

	st->avdd = FUNC15(&spi->dev, "avdd");
	if (FUNC0(st->avdd))
		return FUNC1(st->avdd);

	ret = FUNC20(st->avdd);
	if (ret) {
		FUNC12(&spi->dev, "Failed to enable specified AVdd supply\n");
		return ret;
	}

	st->dvdd = FUNC15(&spi->dev, "dvdd");
	if (FUNC0(st->dvdd)) {
		ret = FUNC1(st->dvdd);
		goto error_disable_avdd;
	}

	ret = FUNC20(st->dvdd);
	if (ret) {
		FUNC12(&spi->dev, "Failed to enable specified DVdd supply\n");
		goto error_disable_avdd;
	}

	voltage_uv = FUNC21(st->avdd);

	if (voltage_uv)
		st->int_vref_mv = voltage_uv / 1000;
	else
		FUNC12(&spi->dev, "Device tree error, reference voltage undefined\n");

	FUNC23(spi, indio_dev);
	st->devid = FUNC22(spi)->driver_data;
	indio_dev->dev.parent = &spi->dev;
	indio_dev->name = FUNC22(spi)->name;
	indio_dev->modes = INDIO_DIRECT_MODE;

	ret = FUNC2(indio_dev);
	if (ret < 0)
		goto error_disable_dvdd;

	if (st->devid == ID_AD7195)
		indio_dev->info = &ad7195_info;
	else
		indio_dev->info = &ad7192_info;

	FUNC7(&st->sd, indio_dev, spi, &ad7192_sigma_delta_info);

	ret = FUNC8(indio_dev);
	if (ret)
		goto error_disable_dvdd;

	st->fclk = AD7192_INT_FREQ_MHZ;

	st->mclk = FUNC13(&st->sd.spi->dev, "mclk");
	if (FUNC0(st->mclk) && FUNC1(st->mclk) != -ENOENT) {
		ret = FUNC1(st->mclk);
		goto error_remove_trigger;
	}

	st->clock_sel = FUNC3(st);

	if (st->clock_sel == AD7192_CLK_EXT_MCLK1_2 ||
	    st->clock_sel == AD7192_CLK_EXT_MCLK2) {
		ret = FUNC11(st->mclk);
		if (ret < 0)
			goto error_remove_trigger;

		st->fclk = FUNC10(st->mclk);
		if (!FUNC5(st->fclk)) {
			ret = -EINVAL;
			FUNC12(&spi->dev,
				"External clock frequency out of bounds\n");
			goto error_disable_clk;
		}
	}

	ret = FUNC4(st, spi->dev.of_node);
	if (ret)
		goto error_disable_clk;

	ret = FUNC16(indio_dev);
	if (ret < 0)
		goto error_disable_clk;
	return 0;

error_disable_clk:
	FUNC9(st->mclk);
error_remove_trigger:
	FUNC6(indio_dev);
error_disable_dvdd:
	FUNC19(st->dvdd);
error_disable_avdd:
	FUNC19(st->avdd);

	return ret;
}