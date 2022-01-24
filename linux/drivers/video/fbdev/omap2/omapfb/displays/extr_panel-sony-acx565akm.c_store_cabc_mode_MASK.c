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
struct panel_drv_data {int /*<<< orphan*/  mutex; int /*<<< orphan*/  has_cabc; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int FUNC0 (char**) ; 
 size_t EINVAL ; 
 char** cabc_modes ; 
 struct panel_drv_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct panel_drv_data*,int) ; 
 int FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*,char const*,int) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
		struct device_attribute *attr,
		const char *buf, size_t count)
{
	struct panel_drv_data *ddata = FUNC1(dev);
	int i;

	for (i = 0; i < FUNC0(cabc_modes); i++) {
		const char *mode_str = cabc_modes[i];
		int cmp_len = FUNC5(mode_str);

		if (count > 0 && buf[count - 1] == '\n')
			count--;
		if (count != cmp_len)
			continue;

		if (FUNC6(buf, mode_str, cmp_len) == 0)
			break;
	}

	if (i == FUNC0(cabc_modes))
		return -EINVAL;

	if (!ddata->has_cabc && i != 0)
		return -EINVAL;

	FUNC2(&ddata->mutex);
	FUNC4(ddata, i);
	FUNC3(&ddata->mutex);

	return count;
}