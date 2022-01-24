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
typedef  int u8 ;
struct hdq_data {scalar_t__ init_trans; int /*<<< orphan*/  hdq_mutex; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  OMAP_HDQ_CTRL_STATUS ; 
 int /*<<< orphan*/  OMAP_HDQ_CTRL_STATUS_INTERRUPTMASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hdq_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hdq_data*,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct hdq_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct hdq_data*) ; 

__attribute__((used)) static u8 FUNC7(void *_hdq)
{
	struct hdq_data *hdq_data = _hdq;
	u8 val = 0;
	int ret;

	/* First write to initialize the transfer */
	if (hdq_data->init_trans == 0)
		FUNC5(hdq_data);

	ret = FUNC2(hdq_data, &val);
	if (ret) {
		ret = FUNC3(&hdq_data->hdq_mutex);
		if (ret < 0) {
			FUNC0(hdq_data->dev, "Could not acquire mutex\n");
			return -EINTR;
		}
		hdq_data->init_trans = 0;
		FUNC4(&hdq_data->hdq_mutex);
		FUNC6(hdq_data);
		return -1;
	}

	FUNC1(hdq_data, OMAP_HDQ_CTRL_STATUS,
			      ~OMAP_HDQ_CTRL_STATUS_INTERRUPTMASK);

	/* Write followed by a read, release the module */
	if (hdq_data->init_trans) {
		ret = FUNC3(&hdq_data->hdq_mutex);
		if (ret < 0) {
			FUNC0(hdq_data->dev, "Could not acquire mutex\n");
			return -EINTR;
		}
		hdq_data->init_trans = 0;
		FUNC4(&hdq_data->hdq_mutex);
		FUNC6(hdq_data);
	}

	return val;
}