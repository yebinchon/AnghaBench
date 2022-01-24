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
struct iio_dev_attr {int address; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad7280_state {int /*<<< orphan*/  lock; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct ad7280_state*,int,int,int /*<<< orphan*/ ,unsigned long) ; 
 struct iio_dev* FUNC1 (struct device*) ; 
 struct ad7280_state* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct iio_dev_attr* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
					  struct device_attribute *attr,
					  const char *buf,
					  size_t len)
{
	struct iio_dev *indio_dev = FUNC1(dev);
	struct ad7280_state *st = FUNC2(indio_dev);
	struct iio_dev_attr *this_attr = FUNC6(attr);
	unsigned long val;
	int ret;

	ret = FUNC3(buf, 10, &val);
	if (ret)
		return ret;

	val /= 71500;

	if (val > 31)
		return -EINVAL;

	FUNC4(&st->lock);
	ret = FUNC0(st, this_attr->address >> 8,
			   this_attr->address & 0xFF,
			   0, (val & 0x1F) << 3);
	FUNC5(&st->lock);

	return ret ? ret : len;
}