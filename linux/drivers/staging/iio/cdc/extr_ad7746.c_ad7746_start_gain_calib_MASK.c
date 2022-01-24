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
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {size_t address; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD7746_CONF_MODE_GAIN_CAL ; 
 int /*<<< orphan*/ * ad7746_channels ; 
 int FUNC0 (struct iio_dev*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct device*,struct device_attribute*,char const*,size_t,int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC2 (struct device*) ; 
 TYPE_1__* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				       struct device_attribute *attr,
				       const char *buf,
				       size_t len)
{
	struct iio_dev *indio_dev = FUNC2(dev);
	int ret = FUNC0(indio_dev,
			      &ad7746_channels[FUNC3(attr)->address]);
	if (ret < 0)
		return ret;

	return FUNC1(dev, attr, buf, len,
				  AD7746_CONF_MODE_GAIN_CAL);
}