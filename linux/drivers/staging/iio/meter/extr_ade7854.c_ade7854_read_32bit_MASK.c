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
typedef  int u32 ;
struct iio_dev_attr {int /*<<< orphan*/  address; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ade7854_state {int (* read_reg ) (struct device*,int /*<<< orphan*/ ,int*,int) ;} ;
typedef  int ssize_t ;

/* Variables and functions */
 struct iio_dev* FUNC0 (struct device*) ; 
 struct ade7854_state* FUNC1 (struct iio_dev*) ; 
 int FUNC2 (char*,char*,int) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ ,int*,int) ; 
 struct iio_dev_attr* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				  struct device_attribute *attr,
				  char *buf)
{
	int ret;
	u32 val = 0;
	struct iio_dev_attr *this_attr = FUNC4(attr);
	struct iio_dev *indio_dev = FUNC0(dev);
	struct ade7854_state *st = FUNC1(indio_dev);

	ret = st->read_reg(dev, this_attr->address, &val, 32);
	if (ret < 0)
		return ret;

	return FUNC2(buf, "%u\n", val);
}