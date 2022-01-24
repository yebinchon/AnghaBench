#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct st_rproc_config {int dummy; } ;
struct TYPE_2__ {int tx_block; int knows_txdone; int /*<<< orphan*/  rx_callback; int /*<<< orphan*/ * tx_done; struct device* dev; } ;
struct st_rproc {int /*<<< orphan*/  clk; struct mbox_chan** mbox_chan; TYPE_1__ mbox_client_vq1; TYPE_1__ mbox_client_vq0; int /*<<< orphan*/  clk_rate; struct st_rproc_config* config; } ;
struct device {struct device_node* of_node; } ;
struct rproc {int has_iommu; struct device dev; int /*<<< orphan*/  state; int /*<<< orphan*/  power; struct st_rproc* priv; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct mbox_chan {int dummy; } ;
struct device_node {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct mbox_chan*) ; 
 size_t MBOX_MAX ; 
 size_t MBOX_RX ; 
 size_t MBOX_TX ; 
 int FUNC1 (struct mbox_chan*) ; 
 int /*<<< orphan*/  RPROC_RUNNING ; 
 size_t ST_RPROC_MAX_VRING ; 
 size_t ST_RPROC_VQ0 ; 
 size_t ST_RPROC_VQ1 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct mbox_chan*) ; 
 struct mbox_chan* FUNC7 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC8 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC9 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct rproc*) ; 
 int FUNC11 (struct rproc*) ; 
 struct rproc* FUNC12 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (struct rproc*) ; 
 int /*<<< orphan*/  st_rproc_match ; 
 int /*<<< orphan*/  st_rproc_mbox_callback_vq0 ; 
 int /*<<< orphan*/  st_rproc_mbox_callback_vq1 ; 
 int /*<<< orphan*/  st_rproc_ops ; 
 int FUNC14 (struct platform_device*) ; 
 int FUNC15 (struct platform_device*) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	const struct of_device_id *match;
	struct st_rproc *ddata;
	struct device_node *np = dev->of_node;
	struct rproc *rproc;
	struct mbox_chan *chan;
	int enabled;
	int ret, i;

	match = FUNC9(st_rproc_match, dev);
	if (!match || !match->data) {
		FUNC5(dev, "No device match found\n");
		return -ENODEV;
	}

	rproc = FUNC12(dev, np->name, &st_rproc_ops, NULL, sizeof(*ddata));
	if (!rproc)
		return -ENOMEM;

	rproc->has_iommu = false;
	ddata = rproc->priv;
	ddata->config = (struct st_rproc_config *)match->data;

	FUNC10(pdev, rproc);

	ret = FUNC14(pdev);
	if (ret)
		goto free_rproc;

	enabled = FUNC15(pdev);
	if (enabled < 0) {
		ret = enabled;
		goto free_clk;
	}

	if (enabled) {
		FUNC2(&rproc->power);
		rproc->state = RPROC_RUNNING;
	} else {
		FUNC3(ddata->clk, ddata->clk_rate);
	}

	if (FUNC8(np, "mbox-names", NULL)) {
		ddata->mbox_client_vq0.dev		= dev;
		ddata->mbox_client_vq0.tx_done		= NULL;
		ddata->mbox_client_vq0.tx_block	= false;
		ddata->mbox_client_vq0.knows_txdone	= false;
		ddata->mbox_client_vq0.rx_callback	= st_rproc_mbox_callback_vq0;

		ddata->mbox_client_vq1.dev		= dev;
		ddata->mbox_client_vq1.tx_done		= NULL;
		ddata->mbox_client_vq1.tx_block	= false;
		ddata->mbox_client_vq1.knows_txdone	= false;
		ddata->mbox_client_vq1.rx_callback	= st_rproc_mbox_callback_vq1;

		/*
		 * To control a co-processor without IPC mechanism.
		 * This driver can be used without mbox and rpmsg.
		 */
		chan = FUNC7(&ddata->mbox_client_vq0, "vq0_rx");
		if (FUNC0(chan)) {
			FUNC5(&rproc->dev, "failed to request mbox chan 0\n");
			ret = FUNC1(chan);
			goto free_clk;
		}
		ddata->mbox_chan[ST_RPROC_VQ0 * MBOX_MAX + MBOX_RX] = chan;

		chan = FUNC7(&ddata->mbox_client_vq0, "vq0_tx");
		if (FUNC0(chan)) {
			FUNC5(&rproc->dev, "failed to request mbox chan 0\n");
			ret = FUNC1(chan);
			goto free_mbox;
		}
		ddata->mbox_chan[ST_RPROC_VQ0 * MBOX_MAX + MBOX_TX] = chan;

		chan = FUNC7(&ddata->mbox_client_vq1, "vq1_rx");
		if (FUNC0(chan)) {
			FUNC5(&rproc->dev, "failed to request mbox chan 1\n");
			ret = FUNC1(chan);
			goto free_mbox;
		}
		ddata->mbox_chan[ST_RPROC_VQ1 * MBOX_MAX + MBOX_RX] = chan;

		chan = FUNC7(&ddata->mbox_client_vq1, "vq1_tx");
		if (FUNC0(chan)) {
			FUNC5(&rproc->dev, "failed to request mbox chan 1\n");
			ret = FUNC1(chan);
			goto free_mbox;
		}
		ddata->mbox_chan[ST_RPROC_VQ1 * MBOX_MAX + MBOX_TX] = chan;
	}

	ret = FUNC11(rproc);
	if (ret)
		goto free_mbox;

	return 0;

free_mbox:
	for (i = 0; i < ST_RPROC_MAX_VRING * MBOX_MAX; i++)
		FUNC6(ddata->mbox_chan[i]);
free_clk:
	FUNC4(ddata->clk);
free_rproc:
	FUNC13(rproc);
	return ret;
}