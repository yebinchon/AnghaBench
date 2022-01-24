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
struct hdq_data {int hdq_irqstatus; int /*<<< orphan*/  hdq_mutex; int /*<<< orphan*/  dev; int /*<<< orphan*/  hdq_usecount; } ;

/* Variables and functions */
 int EINTR ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  OMAP_HDQ_CTRL_STATUS ; 
 int OMAP_HDQ_CTRL_STATUS_DIR ; 
 int OMAP_HDQ_CTRL_STATUS_GO ; 
 int OMAP_HDQ_INT_STATUS_RXCOMPLETE ; 
 int /*<<< orphan*/  OMAP_HDQ_RX_DATA ; 
 int /*<<< orphan*/  OMAP_HDQ_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct hdq_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hdq_data*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  hdq_wait_queue ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct hdq_data *hdq_data, u8 *val)
{
	int ret = 0;
	u8 status;

	ret = FUNC3(&hdq_data->hdq_mutex);
	if (ret < 0) {
		ret = -EINTR;
		goto rtn;
	}

	if (!hdq_data->hdq_usecount) {
		ret = -EINVAL;
		goto out;
	}

	if (!(hdq_data->hdq_irqstatus & OMAP_HDQ_INT_STATUS_RXCOMPLETE)) {
		FUNC2(hdq_data, OMAP_HDQ_CTRL_STATUS,
			OMAP_HDQ_CTRL_STATUS_DIR | OMAP_HDQ_CTRL_STATUS_GO,
			OMAP_HDQ_CTRL_STATUS_DIR | OMAP_HDQ_CTRL_STATUS_GO);
		/*
		 * The RX comes immediately after TX.
		 */
		FUNC5(hdq_wait_queue,
				   (hdq_data->hdq_irqstatus
				    & OMAP_HDQ_INT_STATUS_RXCOMPLETE),
				   OMAP_HDQ_TIMEOUT);

		FUNC2(hdq_data, OMAP_HDQ_CTRL_STATUS, 0,
			OMAP_HDQ_CTRL_STATUS_DIR);
		status = hdq_data->hdq_irqstatus;
		/* check irqstatus */
		if (!(status & OMAP_HDQ_INT_STATUS_RXCOMPLETE)) {
			FUNC0(hdq_data->dev, "timeout waiting for"
				" RXCOMPLETE, %x", status);
			ret = -ETIMEDOUT;
			goto out;
		}
	}
	/* the data is ready. Read it in! */
	*val = FUNC1(hdq_data, OMAP_HDQ_RX_DATA);
out:
	FUNC4(&hdq_data->hdq_mutex);
rtn:
	return ret;

}