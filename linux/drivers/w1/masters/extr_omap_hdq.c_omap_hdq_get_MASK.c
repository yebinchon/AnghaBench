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
struct hdq_data {int hdq_usecount; int mode; int /*<<< orphan*/  hdq_mutex; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINTR ; 
 int EINVAL ; 
 int /*<<< orphan*/  OMAP_HDQ_CTRL_STATUS ; 
 int OMAP_HDQ_CTRL_STATUS_CLOCKENABLE ; 
 int OMAP_HDQ_CTRL_STATUS_INTERRUPTMASK ; 
 int /*<<< orphan*/  OMAP_HDQ_INT_STATUS ; 
 int OMAP_HDQ_MAX_USER ; 
 int /*<<< orphan*/  OMAP_HDQ_SYSCONFIG ; 
 int OMAP_HDQ_SYSCONFIG_NOIDLE ; 
 int /*<<< orphan*/  OMAP_HDQ_SYSSTATUS ; 
 int OMAP_HDQ_SYSSTATUS_RESETDONE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC0 (struct hdq_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct hdq_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hdq_data*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct hdq_data *hdq_data)
{
	int ret = 0;

	ret = FUNC4(&hdq_data->hdq_mutex);
	if (ret < 0) {
		ret = -EINTR;
		goto rtn;
	}

	if (OMAP_HDQ_MAX_USER == hdq_data->hdq_usecount) {
		FUNC1(hdq_data->dev, "attempt to exceed the max use count");
		ret = -EINVAL;
		goto out;
	} else {
		hdq_data->hdq_usecount++;
		FUNC7(THIS_MODULE);
		if (1 == hdq_data->hdq_usecount) {

			FUNC6(hdq_data->dev);

			/* make sure HDQ/1W is out of reset */
			if (!(FUNC2(hdq_data, OMAP_HDQ_SYSSTATUS) &
				OMAP_HDQ_SYSSTATUS_RESETDONE)) {
				ret = FUNC0(hdq_data);
				if (ret)
					/* back up the count */
					hdq_data->hdq_usecount--;
			} else {
				/* select HDQ/1W mode & enable clocks */
				FUNC3(hdq_data, OMAP_HDQ_CTRL_STATUS,
					OMAP_HDQ_CTRL_STATUS_CLOCKENABLE |
					OMAP_HDQ_CTRL_STATUS_INTERRUPTMASK |
					hdq_data->mode);
				FUNC3(hdq_data, OMAP_HDQ_SYSCONFIG,
					OMAP_HDQ_SYSCONFIG_NOIDLE);
				FUNC2(hdq_data, OMAP_HDQ_INT_STATUS);
			}
		}
	}

out:
	FUNC5(&hdq_data->hdq_mutex);
rtn:
	return ret;
}