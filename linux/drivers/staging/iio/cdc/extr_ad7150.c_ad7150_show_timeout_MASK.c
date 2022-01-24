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
typedef  int u8 ;
struct iio_dev_attr {int /*<<< orphan*/  address; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad7150_chip_info {int** mag_timeout; int** thresh_timeout; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ IIO_EV_DIR_RISING ; 
#define  IIO_EV_TYPE_MAG_ADAPTIVE 129 
#define  IIO_EV_TYPE_THRESH_ADAPTIVE 128 
 struct iio_dev* FUNC3 (struct device*) ; 
 struct ad7150_chip_info* FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 struct iio_dev_attr* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				   struct device_attribute *attr,
				   char *buf)
{
	struct iio_dev *indio_dev = FUNC3(dev);
	struct ad7150_chip_info *chip = FUNC4(indio_dev);
	struct iio_dev_attr *this_attr = FUNC6(attr);
	u8 value;

	/* use the event code for consistency reasons */
	int chan = FUNC0(this_attr->address);
	int rising = (FUNC1(this_attr->address)
		      == IIO_EV_DIR_RISING) ? 1 : 0;

	switch (FUNC2(this_attr->address)) {
	case IIO_EV_TYPE_MAG_ADAPTIVE:
		value = chip->mag_timeout[rising][chan];
		break;
	case IIO_EV_TYPE_THRESH_ADAPTIVE:
		value = chip->thresh_timeout[rising][chan];
		break;
	default:
		return -EINVAL;
	}

	return FUNC5(buf, "%d\n", value);
}