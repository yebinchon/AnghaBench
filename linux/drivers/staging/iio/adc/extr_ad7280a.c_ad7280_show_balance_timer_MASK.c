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
 int FUNC0 (struct ad7280_state*,int,int) ; 
 struct iio_dev* FUNC1 (struct device*) ; 
 struct ad7280_state* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,char*,unsigned int) ; 
 struct iio_dev_attr* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
					 struct device_attribute *attr,
					 char *buf)
{
	struct iio_dev *indio_dev = FUNC1(dev);
	struct ad7280_state *st = FUNC2(indio_dev);
	struct iio_dev_attr *this_attr = FUNC6(attr);
	int ret;
	unsigned int msecs;

	FUNC3(&st->lock);
	ret = FUNC0(st, this_attr->address >> 8,
			  this_attr->address & 0xFF);
	FUNC4(&st->lock);

	if (ret < 0)
		return ret;

	msecs = (ret >> 3) * 71500;

	return FUNC5(buf, "%u\n", msecs);
}