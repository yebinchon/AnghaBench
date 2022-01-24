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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad2s1210_state {int /*<<< orphan*/  lock; int /*<<< orphan*/  resolution; } ;
typedef  int ssize_t ;

/* Variables and functions */
 unsigned char AD2S1210_MSB_IS_HIGH ; 
 unsigned char AD2S1210_MSB_IS_LOW ; 
 unsigned char AD2S1210_REG_CONTROL ; 
 unsigned char AD2S1210_SET_RESOLUTION ; 
 int EINVAL ; 
 int EIO ; 
 int FUNC0 (struct ad2s1210_state*,unsigned char) ; 
 int FUNC1 (struct ad2s1210_state*,unsigned char) ; 
 int /*<<< orphan*/ * ad2s1210_resolution_value ; 
 int /*<<< orphan*/  FUNC2 (struct ad2s1210_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 struct ad2s1210_state* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
					 struct device_attribute *attr,
					 const char *buf, size_t len)
{
	struct ad2s1210_state *st = FUNC5(FUNC4(dev));
	unsigned char data;
	unsigned char udata;
	int ret;

	ret = FUNC6(buf, 10, &udata);
	if (ret || udata < 10 || udata > 16) {
		FUNC3(dev, "ad2s1210: resolution out of range\n");
		return -EINVAL;
	}
	FUNC7(&st->lock);
	ret = FUNC0(st, AD2S1210_REG_CONTROL);
	if (ret < 0)
		goto error_ret;
	data = ret;
	data &= ~AD2S1210_SET_RESOLUTION;
	data |= (udata - 10) >> 1;
	ret = FUNC1(st, AD2S1210_REG_CONTROL);
	if (ret < 0)
		goto error_ret;
	ret = FUNC1(st, data & AD2S1210_MSB_IS_LOW);
	if (ret < 0)
		goto error_ret;
	ret = FUNC0(st, AD2S1210_REG_CONTROL);
	if (ret < 0)
		goto error_ret;
	data = ret;
	if (data & AD2S1210_MSB_IS_HIGH) {
		ret = -EIO;
		FUNC3(dev, "ad2s1210: setting resolution fail\n");
		goto error_ret;
	}
	st->resolution =
		ad2s1210_resolution_value[data & AD2S1210_SET_RESOLUTION];
	FUNC2(st);
	ret = len;
error_ret:
	FUNC8(&st->lock);
	return ret;
}