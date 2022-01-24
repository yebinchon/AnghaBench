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
struct resource {int dummy; } ;
struct TYPE_2__ {int knows_txdone; int /*<<< orphan*/ * dev; } ;
struct qmp {int /*<<< orphan*/  mbox_chan; TYPE_1__ mbox_client; int /*<<< orphan*/  msgram; int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  event; int /*<<< orphan*/ * dev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct resource*) ; 
 struct qmp* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct qmp*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct qmp*) ; 
 int /*<<< orphan*/  FUNC13 (struct qmp*) ; 
 int FUNC14 (struct qmp*) ; 
 int /*<<< orphan*/  qmp_intr ; 
 int FUNC15 (struct qmp*) ; 
 int FUNC16 (struct qmp*) ; 
 int FUNC17 (struct qmp*) ; 
 int /*<<< orphan*/  FUNC18 (struct qmp*) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct resource *res;
	struct qmp *qmp;
	int irq;
	int ret;

	qmp = FUNC4(&pdev->dev, sizeof(*qmp), GFP_KERNEL);
	if (!qmp)
		return -ENOMEM;

	qmp->dev = &pdev->dev;
	FUNC6(&qmp->event);
	FUNC9(&qmp->tx_lock);

	res = FUNC11(pdev, IORESOURCE_MEM, 0);
	qmp->msgram = FUNC3(&pdev->dev, res);
	if (FUNC0(qmp->msgram))
		return FUNC1(qmp->msgram);

	qmp->mbox_client.dev = &pdev->dev;
	qmp->mbox_client.knows_txdone = true;
	qmp->mbox_chan = FUNC8(&qmp->mbox_client, 0);
	if (FUNC0(qmp->mbox_chan)) {
		FUNC2(&pdev->dev, "failed to acquire ipc mailbox\n");
		return FUNC1(qmp->mbox_chan);
	}

	irq = FUNC10(pdev, 0);
	ret = FUNC5(&pdev->dev, irq, qmp_intr, IRQF_ONESHOT,
			       "aoss-qmp", qmp);
	if (ret < 0) {
		FUNC2(&pdev->dev, "failed to request interrupt\n");
		goto err_free_mbox;
	}

	ret = FUNC15(qmp);
	if (ret < 0)
		goto err_free_mbox;

	ret = FUNC17(qmp);
	if (ret)
		goto err_close_qmp;

	ret = FUNC16(qmp);
	if (ret)
		goto err_remove_qdss_clk;

	ret = FUNC14(qmp);
	if (ret)
		FUNC2(&pdev->dev, "failed to register aoss cooling devices\n");

	FUNC12(pdev, qmp);

	return 0;

err_remove_qdss_clk:
	FUNC18(qmp);
err_close_qmp:
	FUNC13(qmp);
err_free_mbox:
	FUNC7(qmp->mbox_chan);

	return ret;
}