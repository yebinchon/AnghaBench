#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct device* parent; } ;
struct rproc {int /*<<< orphan*/  bootaddr; TYPE_1__ dev; struct omap_rproc* priv; } ;
struct TYPE_4__ {struct omap_rproc_pdata* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct omap_rproc_pdata {int (* device_enable ) (struct platform_device*) ;int /*<<< orphan*/  mbox_name; int /*<<< orphan*/  (* set_bootaddr ) (int /*<<< orphan*/ ) ;} ;
struct mbox_client {int tx_block; int knows_txdone; int /*<<< orphan*/  rx_callback; int /*<<< orphan*/ * tx_done; struct device* dev; } ;
struct omap_rproc {int /*<<< orphan*/  mbox; struct mbox_client client; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ RP_MBOX_ECHO_REQUEST ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct mbox_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  omap_rproc_mbox_callback ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct platform_device*) ; 
 struct platform_device* FUNC8 (struct device*) ; 

__attribute__((used)) static int FUNC9(struct rproc *rproc)
{
	struct omap_rproc *oproc = rproc->priv;
	struct device *dev = rproc->dev.parent;
	struct platform_device *pdev = FUNC8(dev);
	struct omap_rproc_pdata *pdata = pdev->dev.platform_data;
	int ret;
	struct mbox_client *client = &oproc->client;

	if (pdata->set_bootaddr)
		pdata->set_bootaddr(rproc->bootaddr);

	client->dev = dev;
	client->tx_done = NULL;
	client->rx_callback = omap_rproc_mbox_callback;
	client->tx_block = false;
	client->knows_txdone = false;

	oproc->mbox = FUNC5(client, pdata->mbox_name);
	if (FUNC0(oproc->mbox)) {
		ret = -EBUSY;
		FUNC2(dev, "mbox_request_channel failed: %ld\n",
			FUNC1(oproc->mbox));
		return ret;
	}

	/*
	 * Ping the remote processor. this is only for sanity-sake;
	 * there is no functional effect whatsoever.
	 *
	 * Note that the reply will _not_ arrive immediately: this message
	 * will wait in the mailbox fifo until the remote processor is booted.
	 */
	ret = FUNC4(oproc->mbox, (void *)RP_MBOX_ECHO_REQUEST);
	if (ret < 0) {
		FUNC2(dev, "mbox_send_message failed: %d\n", ret);
		goto put_mbox;
	}

	ret = pdata->device_enable(pdev);
	if (ret) {
		FUNC2(dev, "omap_device_enable failed: %d\n", ret);
		goto put_mbox;
	}

	return 0;

put_mbox:
	FUNC3(oproc->mbox);
	return ret;
}