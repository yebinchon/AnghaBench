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
typedef  int /*<<< orphan*/  u16 ;
struct iio_dev_attr {int /*<<< orphan*/  address; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adis {int dummy; } ;
typedef  int ssize_t ;
typedef  int s16 ;

/* Variables and functions */
 int ADIS16240_ERROR_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct adis*) ; 
 int FUNC1 (struct adis*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct iio_dev* FUNC2 (struct device*) ; 
 struct adis* FUNC3 (struct iio_dev*) ; 
 int FUNC4 (char*,char*,int) ; 
 struct iio_dev_attr* FUNC5 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
					 struct device_attribute *attr,
					 char *buf,
					 unsigned int bits)
{
	struct iio_dev *indio_dev = FUNC2(dev);
	struct adis *st = FUNC3(indio_dev);
	int ret;
	s16 val = 0;
	unsigned int shift = 16 - bits;
	struct iio_dev_attr *this_attr = FUNC5(attr);

	ret = FUNC1(st,
			       this_attr->address, (u16 *)&val);
	if (ret)
		return ret;

	if (val & ADIS16240_ERROR_ACTIVE)
		FUNC0(st);

	val = (s16)(val << shift) >> shift;
	return FUNC4(buf, "%d\n", val);
}