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
struct TYPE_6__ {TYPE_1__* driver; } ;
struct spi_device {TYPE_3__ dev; } ;
struct TYPE_5__ {TYPE_3__* parent; } ;
struct iio_dev {int /*<<< orphan*/  modes; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/ * info; TYPE_2__ dev; int /*<<< orphan*/  name; } ;
struct adis {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  adis16240_channels ; 
 int /*<<< orphan*/  adis16240_data ; 
 int /*<<< orphan*/  adis16240_info ; 
 int /*<<< orphan*/  FUNC1 (struct adis*,struct iio_dev*) ; 
 int FUNC2 (struct adis*,struct iio_dev*,struct spi_device*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct adis*) ; 
 int FUNC4 (struct adis*,struct iio_dev*,int /*<<< orphan*/ *) ; 
 struct iio_dev* FUNC5 (TYPE_3__*,int) ; 
 int FUNC6 (struct iio_dev*) ; 
 struct adis* FUNC7 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct spi_device*,struct iio_dev*) ; 

__attribute__((used)) static int FUNC9(struct spi_device *spi)
{
	int ret;
	struct adis *st;
	struct iio_dev *indio_dev;

	/* setup the industrialio driver allocated elements */
	indio_dev = FUNC5(&spi->dev, sizeof(*st));
	if (!indio_dev)
		return -ENOMEM;
	st = FUNC7(indio_dev);
	/* this is only used for removal purposes */
	FUNC8(spi, indio_dev);

	indio_dev->name = spi->dev.driver->name;
	indio_dev->dev.parent = &spi->dev;
	indio_dev->info = &adis16240_info;
	indio_dev->channels = adis16240_channels;
	indio_dev->num_channels = FUNC0(adis16240_channels);
	indio_dev->modes = INDIO_DIRECT_MODE;

	ret = FUNC2(st, indio_dev, spi, &adis16240_data);
	if (ret)
		return ret;
	ret = FUNC4(st, indio_dev, NULL);
	if (ret)
		return ret;

	/* Get the device into a sane initial state */
	ret = FUNC3(st);
	if (ret)
		goto error_cleanup_buffer_trigger;
	ret = FUNC6(indio_dev);
	if (ret)
		goto error_cleanup_buffer_trigger;
	return 0;

error_cleanup_buffer_trigger:
	FUNC1(st, indio_dev);
	return ret;
}