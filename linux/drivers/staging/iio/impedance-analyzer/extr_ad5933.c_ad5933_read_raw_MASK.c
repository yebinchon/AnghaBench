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
typedef  int /*<<< orphan*/  u8 ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct ad5933_state {int /*<<< orphan*/  client; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  AD5933_CTRL_MEASURE_TEMP ; 
 int /*<<< orphan*/  AD5933_REG_TEMP_DATA ; 
 int /*<<< orphan*/  AD5933_STAT_TEMP_VALID ; 
 int EINVAL ; 
#define  IIO_CHAN_INFO_RAW 129 
#define  IIO_CHAN_INFO_SCALE 128 
 int IIO_VAL_FRACTIONAL_LOG2 ; 
 int IIO_VAL_INT ; 
 int FUNC0 (struct ad5933_state*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ad5933_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct iio_dev*) ; 
 struct ad5933_state* FUNC6 (struct iio_dev*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct iio_dev *indio_dev,
			   struct iio_chan_spec const *chan,
			   int *val,
			   int *val2,
			   long m)
{
	struct ad5933_state *st = FUNC6(indio_dev);
	__be16 dat;
	int ret;

	switch (m) {
	case IIO_CHAN_INFO_RAW:
		ret = FUNC4(indio_dev);
		if (ret)
			return ret;
		ret = FUNC0(st, AD5933_CTRL_MEASURE_TEMP);
		if (ret < 0)
			goto out;
		ret = FUNC2(st, AD5933_STAT_TEMP_VALID);
		if (ret < 0)
			goto out;

		ret = FUNC1(st->client,
				      AD5933_REG_TEMP_DATA,
				      2, (u8 *)&dat);
		if (ret < 0)
			goto out;
		FUNC5(indio_dev);
		*val = FUNC7(FUNC3(dat), 13);

		return IIO_VAL_INT;
	case IIO_CHAN_INFO_SCALE:
		*val = 1000;
		*val2 = 5;
		return IIO_VAL_FRACTIONAL_LOG2;
	}

	return -EINVAL;
out:
	FUNC5(indio_dev);
	return ret;
}