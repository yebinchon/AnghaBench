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
struct wl1271 {unsigned long sg_enabled; scalar_t__ state; int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 scalar_t__ WLCORE_STATE_ON ; 
 struct wl1271* FUNC0 (struct device*) ; 
 int FUNC1 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct wl1271*,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static ssize_t FUNC11(struct device *dev,
						struct device_attribute *attr,
						const char *buf, size_t count)
{
	struct wl1271 *wl = FUNC0(dev);
	unsigned long res;
	int ret;

	ret = FUNC1(buf, 10, &res);
	if (ret < 0) {
		FUNC10("incorrect value written to bt_coex_mode");
		return count;
	}

	FUNC2(&wl->mutex);

	res = !!res;

	if (res == wl->sg_enabled)
		goto out;

	wl->sg_enabled = res;

	if (FUNC8(wl->state != WLCORE_STATE_ON))
		goto out;

	ret = FUNC4(wl->dev);
	if (ret < 0) {
		FUNC7(wl->dev);
		goto out;
	}

	FUNC9(wl, wl->sg_enabled);
	FUNC5(wl->dev);
	FUNC6(wl->dev);

 out:
	FUNC3(&wl->mutex);
	return count;
}