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
struct spi_device {int /*<<< orphan*/  mode; int /*<<< orphan*/  max_speed_hz; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int /*<<< orphan*/  name; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct ad2s1210_state {int hysteresis; int resolution; int /*<<< orphan*/  fclkin; int /*<<< orphan*/  fexcit; int /*<<< orphan*/  mode; struct spi_device* sdev; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD2S1210_DEF_EXCIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  MOD_CONFIG ; 
 int /*<<< orphan*/  SPI_MODE_3 ; 
 int /*<<< orphan*/  ad2s1210_channels ; 
 int /*<<< orphan*/  ad2s1210_info ; 
 int /*<<< orphan*/  FUNC1 (struct ad2s1210_state*) ; 
 int FUNC2 (struct ad2s1210_state*) ; 
 struct iio_dev* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct iio_dev*) ; 
 struct ad2s1210_state* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct spi_device*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct spi_device*) ; 

__attribute__((used)) static int FUNC10(struct spi_device *spi)
{
	struct iio_dev *indio_dev;
	struct ad2s1210_state *st;
	int ret;

	indio_dev = FUNC3(&spi->dev, sizeof(*st));
	if (!indio_dev)
		return -ENOMEM;
	st = FUNC5(indio_dev);
	ret = FUNC2(st);
	if (ret < 0)
		return ret;

	FUNC8(spi, indio_dev);

	FUNC6(&st->lock);
	st->sdev = spi;
	st->hysteresis = true;
	st->mode = MOD_CONFIG;
	st->resolution = 12;
	st->fexcit = AD2S1210_DEF_EXCIT;

	indio_dev->dev.parent = &spi->dev;
	indio_dev->info = &ad2s1210_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->channels = ad2s1210_channels;
	indio_dev->num_channels = FUNC0(ad2s1210_channels);
	indio_dev->name = FUNC7(spi)->name;

	ret = FUNC4(&spi->dev, indio_dev);
	if (ret)
		return ret;

	st->fclkin = spi->max_speed_hz;
	spi->mode = SPI_MODE_3;
	FUNC9(spi);
	FUNC1(st);

	return 0;
}