#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct qcom_glink_pipe {int dummy; } ;
struct TYPE_5__ {int knows_txdone; struct device* dev; } ;
struct qcom_glink {unsigned long features; int intentless; int irq; int /*<<< orphan*/  mbox_chan; TYPE_3__ mbox_client; int /*<<< orphan*/  name; int /*<<< orphan*/  rcids; int /*<<< orphan*/  lcids; int /*<<< orphan*/  idr_lock; int /*<<< orphan*/  rx_work; int /*<<< orphan*/  rx_queue; int /*<<< orphan*/  rx_lock; int /*<<< orphan*/  tx_lock; struct qcom_glink_pipe* rx_pipe; struct qcom_glink_pipe* tx_pipe; struct device* dev; } ;
struct device {TYPE_1__* of_node; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  EPROBE_DEFER ; 
 struct qcom_glink* FUNC0 (int /*<<< orphan*/ ) ; 
 struct qcom_glink* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IRQF_NO_SUSPEND ; 
 int IRQF_SHARED ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 struct qcom_glink* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*,int,int /*<<< orphan*/ ,int,char*,struct qcom_glink*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qcom_glink_native_intr ; 
 int FUNC13 (struct qcom_glink*) ; 
 int /*<<< orphan*/  qcom_glink_work ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

struct qcom_glink *FUNC15(struct device *dev,
					   unsigned long features,
					   struct qcom_glink_pipe *rx,
					   struct qcom_glink_pipe *tx,
					   bool intentless)
{
	int irq;
	int ret;
	struct qcom_glink *glink;

	glink = FUNC7(dev, sizeof(*glink), GFP_KERNEL);
	if (!glink)
		return FUNC1(-ENOMEM);

	glink->dev = dev;
	glink->tx_pipe = tx;
	glink->rx_pipe = rx;

	glink->features = features;
	glink->intentless = intentless;

	FUNC14(&glink->tx_lock);
	FUNC14(&glink->rx_lock);
	FUNC2(&glink->rx_queue);
	FUNC3(&glink->rx_work, qcom_glink_work);

	FUNC14(&glink->idr_lock);
	FUNC9(&glink->lcids);
	FUNC9(&glink->rcids);

	ret = FUNC12(dev->of_node, "label", &glink->name);
	if (ret < 0)
		glink->name = dev->of_node->name;

	glink->mbox_client.dev = dev;
	glink->mbox_client.knows_txdone = true;
	glink->mbox_chan = FUNC10(&glink->mbox_client, 0);
	if (FUNC4(glink->mbox_chan)) {
		if (FUNC5(glink->mbox_chan) != -EPROBE_DEFER)
			FUNC6(dev, "failed to acquire IPC channel\n");
		return FUNC0(glink->mbox_chan);
	}

	irq = FUNC11(dev->of_node, 0);
	ret = FUNC8(dev, irq,
			       qcom_glink_native_intr,
			       IRQF_NO_SUSPEND | IRQF_SHARED,
			       "glink-native", glink);
	if (ret) {
		FUNC6(dev, "failed to request IRQ\n");
		return FUNC1(ret);
	}

	glink->irq = irq;

	ret = FUNC13(glink);
	if (ret)
		return FUNC1(ret);

	return glink;
}