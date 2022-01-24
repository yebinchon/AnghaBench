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
struct iio_dev_attr {int /*<<< orphan*/  address; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ade7854_state {int (* write_reg ) (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;} ;
typedef  int ssize_t ;

/* Variables and functions */
 struct iio_dev* FUNC0 (struct device*) ; 
 struct ade7854_state* FUNC1 (struct iio_dev*) ; 
 int FUNC2 (char const*,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct iio_dev_attr* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				  struct device_attribute *attr,
				  const char *buf,
				  size_t len)
{
	struct iio_dev_attr *this_attr = FUNC4(attr);
	struct iio_dev *indio_dev = FUNC0(dev);
	struct ade7854_state *st = FUNC1(indio_dev);

	int ret;
	u8 val;

	ret = FUNC2(buf, 10, &val);
	if (ret)
		goto error_ret;
	ret = st->write_reg(dev, this_attr->address, val, 8);

error_ret:
	return ret ? ret : len;
}