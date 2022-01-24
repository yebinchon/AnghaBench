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
struct hdq_data {int hdq_irqstatus; int /*<<< orphan*/  dev; int /*<<< orphan*/  hdq_spinlock; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  OMAP_HDQ_CTRL_STATUS ; 
 int OMAP_HDQ_CTRL_STATUS_DIR ; 
 int OMAP_HDQ_CTRL_STATUS_GO ; 
 int /*<<< orphan*/  OMAP_HDQ_FLAG_CLEAR ; 
 int /*<<< orphan*/  OMAP_HDQ_INT_STATUS ; 
 int OMAP_HDQ_INT_STATUS_TXCOMPLETE ; 
 int /*<<< orphan*/  OMAP_HDQ_TIMEOUT ; 
 int /*<<< orphan*/  OMAP_HDQ_TX_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct hdq_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hdq_data*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hdq_data*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct hdq_data*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  hdq_wait_queue ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct hdq_data *hdq_data, u8 val, u8 *status)
{
	int ret;
	u8 tmp_status;
	unsigned long irqflags;

	*status = 0;

	FUNC5(&hdq_data->hdq_spinlock, irqflags);
	/* clear interrupt flags via a dummy read */
	FUNC1(hdq_data, OMAP_HDQ_INT_STATUS);
	/* ISR loads it with new INT_STATUS */
	hdq_data->hdq_irqstatus = 0;
	FUNC6(&hdq_data->hdq_spinlock, irqflags);

	FUNC3(hdq_data, OMAP_HDQ_TX_DATA, val);

	/* set the GO bit */
	FUNC2(hdq_data, OMAP_HDQ_CTRL_STATUS, OMAP_HDQ_CTRL_STATUS_GO,
		OMAP_HDQ_CTRL_STATUS_DIR | OMAP_HDQ_CTRL_STATUS_GO);
	/* wait for the TXCOMPLETE bit */
	ret = FUNC7(hdq_wait_queue,
		hdq_data->hdq_irqstatus, OMAP_HDQ_TIMEOUT);
	if (ret == 0) {
		FUNC0(hdq_data->dev, "TX wait elapsed\n");
		ret = -ETIMEDOUT;
		goto out;
	}

	*status = hdq_data->hdq_irqstatus;
	/* check irqstatus */
	if (!(*status & OMAP_HDQ_INT_STATUS_TXCOMPLETE)) {
		FUNC0(hdq_data->dev, "timeout waiting for"
			" TXCOMPLETE/RXCOMPLETE, %x", *status);
		ret = -ETIMEDOUT;
		goto out;
	}

	/* wait for the GO bit return to zero */
	ret = FUNC4(hdq_data, OMAP_HDQ_CTRL_STATUS,
			OMAP_HDQ_CTRL_STATUS_GO,
			OMAP_HDQ_FLAG_CLEAR, &tmp_status);
	if (ret) {
		FUNC0(hdq_data->dev, "timeout waiting GO bit"
			" return to zero, %x", tmp_status);
	}

out:
	return ret;
}