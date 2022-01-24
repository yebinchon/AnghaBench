#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct device* parent; } ;
struct iio_dev {int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct ade7854_state {int /*<<< orphan*/  buf_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  ade7854_info ; 
 int FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct device*,struct iio_dev*) ; 
 struct ade7854_state* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct iio_dev *indio_dev, struct device *dev)
{
	int ret;
	struct ade7854_state *st = FUNC2(indio_dev);
	/* setup the industrialio driver allocated elements */
	FUNC3(&st->buf_lock);

	indio_dev->dev.parent = dev;
	indio_dev->info = &ade7854_info;
	indio_dev->modes = INDIO_DIRECT_MODE;

	ret = FUNC1(dev, indio_dev);
	if (ret)
		return ret;

	/* Get the device into a sane initial state */
	return FUNC0(indio_dev);
}