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
struct iio_dev_attr {unsigned char address; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad2s1210_state {int /*<<< orphan*/  lock; } ;
typedef  int ssize_t ;

/* Variables and functions */
 unsigned char AD2S1210_MSB_IS_LOW ; 
 int EINVAL ; 
 int FUNC0 (struct ad2s1210_state*,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 struct ad2s1210_state* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct iio_dev_attr* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				  struct device_attribute *attr,
				  const char *buf, size_t len)
{
	struct ad2s1210_state *st = FUNC2(FUNC1(dev));
	unsigned char data;
	int ret;
	struct iio_dev_attr *iattr = FUNC6(attr);

	ret = FUNC3(buf, 10, &data);
	if (ret)
		return -EINVAL;
	FUNC4(&st->lock);
	ret = FUNC0(st, iattr->address);
	if (ret < 0)
		goto error_ret;
	ret = FUNC0(st, data & AD2S1210_MSB_IS_LOW);
error_ret:
	FUNC5(&st->lock);
	return ret < 0 ? ret : len;
}