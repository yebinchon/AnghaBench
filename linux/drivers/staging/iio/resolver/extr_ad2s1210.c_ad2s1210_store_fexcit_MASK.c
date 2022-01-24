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
struct ad2s1210_state {unsigned int fexcit; int /*<<< orphan*/  lock; } ;
typedef  int ssize_t ;

/* Variables and functions */
 unsigned int AD2S1210_MAX_EXCIT ; 
 unsigned int AD2S1210_MIN_EXCIT ; 
 int EINVAL ; 
 int FUNC0 (struct ad2s1210_state*) ; 
 int FUNC1 (struct ad2s1210_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 struct ad2s1210_state* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
				     struct device_attribute *attr,
				     const char *buf, size_t len)
{
	struct ad2s1210_state *st = FUNC4(FUNC3(dev));
	unsigned int fexcit;
	int ret;

	ret = FUNC5(buf, 10, &fexcit);
	if (ret < 0)
		return ret;
	if (fexcit < AD2S1210_MIN_EXCIT || fexcit > AD2S1210_MAX_EXCIT) {
		FUNC2(dev,
			"ad2s1210: excitation frequency out of range\n");
		return -EINVAL;
	}
	FUNC6(&st->lock);
	st->fexcit = fexcit;
	ret = FUNC1(st);
	if (ret < 0)
		goto error_ret;
	ret = FUNC0(st);
error_ret:
	FUNC7(&st->lock);

	return ret < 0 ? ret : len;
}