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
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;
struct ad7150_chip_info {int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IIO_CHAN_INFO_AVERAGE_RAW 129 
#define  IIO_CHAN_INFO_RAW 128 
 int IIO_VAL_INT ; 
 int /*<<< orphan*/ ** ad7150_addresses ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ad7150_chip_info* FUNC1 (struct iio_dev*) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev,
			   struct iio_chan_spec const *chan,
			   int *val,
			   int *val2,
			   long mask)
{
	int ret;
	struct ad7150_chip_info *chip = FUNC1(indio_dev);
	int channel = chan->channel;

	switch (mask) {
	case IIO_CHAN_INFO_RAW:
		ret = FUNC0(chip->client,
					       ad7150_addresses[channel][0]);
		if (ret < 0)
			return ret;
		*val = FUNC2(ret);
		return IIO_VAL_INT;
	case IIO_CHAN_INFO_AVERAGE_RAW:
		ret = FUNC0(chip->client,
					       ad7150_addresses[channel][1]);
		if (ret < 0)
			return ret;
		*val = FUNC2(ret);
		return IIO_VAL_INT;
	default:
		return -EINVAL;
	}
}