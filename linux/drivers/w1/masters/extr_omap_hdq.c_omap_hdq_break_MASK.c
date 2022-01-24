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
struct hdq_data {int hdq_irqstatus; int /*<<< orphan*/  hdq_mutex; int /*<<< orphan*/  dev; int /*<<< orphan*/  hdq_spinlock; } ;

/* Variables and functions */
 int EINTR ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  OMAP_HDQ_CTRL_STATUS ; 
 int OMAP_HDQ_CTRL_STATUS_DIR ; 
 int OMAP_HDQ_CTRL_STATUS_GO ; 
 int OMAP_HDQ_CTRL_STATUS_INITIALIZATION ; 
 int OMAP_HDQ_CTRL_STATUS_PRESENCE ; 
 int /*<<< orphan*/  OMAP_HDQ_FLAG_CLEAR ; 
 int /*<<< orphan*/  OMAP_HDQ_INT_STATUS ; 
 int OMAP_HDQ_INT_STATUS_TIMEOUT ; 
 int /*<<< orphan*/  OMAP_HDQ_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (struct hdq_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hdq_data*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (struct hdq_data*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  hdq_wait_queue ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct hdq_data *hdq_data)
{
	int ret = 0;
	u8 tmp_status;
	unsigned long irqflags;

	ret = FUNC4(&hdq_data->hdq_mutex);
	if (ret < 0) {
		FUNC0(hdq_data->dev, "Could not acquire mutex\n");
		ret = -EINTR;
		goto rtn;
	}

	FUNC6(&hdq_data->hdq_spinlock, irqflags);
	/* clear interrupt flags via a dummy read */
	FUNC1(hdq_data, OMAP_HDQ_INT_STATUS);
	/* ISR loads it with new INT_STATUS */
	hdq_data->hdq_irqstatus = 0;
	FUNC7(&hdq_data->hdq_spinlock, irqflags);

	/* set the INIT and GO bit */
	FUNC2(hdq_data, OMAP_HDQ_CTRL_STATUS,
		OMAP_HDQ_CTRL_STATUS_INITIALIZATION | OMAP_HDQ_CTRL_STATUS_GO,
		OMAP_HDQ_CTRL_STATUS_DIR | OMAP_HDQ_CTRL_STATUS_INITIALIZATION |
		OMAP_HDQ_CTRL_STATUS_GO);

	/* wait for the TIMEOUT bit */
	ret = FUNC8(hdq_wait_queue,
		hdq_data->hdq_irqstatus, OMAP_HDQ_TIMEOUT);
	if (ret == 0) {
		FUNC0(hdq_data->dev, "break wait elapsed\n");
		ret = -EINTR;
		goto out;
	}

	tmp_status = hdq_data->hdq_irqstatus;
	/* check irqstatus */
	if (!(tmp_status & OMAP_HDQ_INT_STATUS_TIMEOUT)) {
		FUNC0(hdq_data->dev, "timeout waiting for TIMEOUT, %x",
				tmp_status);
		ret = -ETIMEDOUT;
		goto out;
	}

	/*
	 * check for the presence detect bit to get
	 * set to show that the slave is responding
	 */
	if (!(FUNC1(hdq_data, OMAP_HDQ_CTRL_STATUS) &
			OMAP_HDQ_CTRL_STATUS_PRESENCE)) {
		FUNC0(hdq_data->dev, "Presence bit not set\n");
		ret = -ETIMEDOUT;
		goto out;
	}

	/*
	 * wait for both INIT and GO bits rerurn to zero.
	 * zero wait time expected for interrupt mode.
	 */
	ret = FUNC3(hdq_data, OMAP_HDQ_CTRL_STATUS,
			OMAP_HDQ_CTRL_STATUS_INITIALIZATION |
			OMAP_HDQ_CTRL_STATUS_GO, OMAP_HDQ_FLAG_CLEAR,
			&tmp_status);
	if (ret)
		FUNC0(hdq_data->dev, "timeout waiting INIT&GO bits"
			" return to zero, %x", tmp_status);

out:
	FUNC5(&hdq_data->hdq_mutex);
rtn:
	return ret;
}