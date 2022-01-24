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
struct TYPE_2__ {int tx_block; int knows_txdone; int /*<<< orphan*/ * rx_callback; int /*<<< orphan*/ * tx_prepare; int /*<<< orphan*/ * tx_done; struct device* dev; } ;
struct wkup_m3_ipc {struct task_struct* mbox; int /*<<< orphan*/ * ops; int /*<<< orphan*/  state; struct device* dev; struct rproc* rproc; TYPE_1__ mbox_client; struct task_struct* ipc_mem_base; } ;
struct task_struct {int dummy; } ;
struct rproc {int dummy; } ;
struct resource {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
typedef  int /*<<< orphan*/  phandle ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  M3_STATE_RESET ; 
 int FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 struct task_struct* FUNC3 (struct device*,struct resource*) ; 
 struct wkup_m3_ipc* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct wkup_m3_ipc*) ; 
 int /*<<< orphan*/  ipc_ops ; 
 struct task_struct* FUNC6 (void*,struct wkup_m3_ipc*,char*) ; 
 struct wkup_m3_ipc* m3_ipc_state ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*) ; 
 struct task_struct* FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rproc* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct rproc*) ; 
 scalar_t__ wkup_m3_rproc_boot_thread ; 
 int /*<<< orphan*/  wkup_m3_txev_handler ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	int irq, ret;
	phandle rproc_phandle;
	struct rproc *m3_rproc;
	struct resource *res;
	struct task_struct *task;
	struct wkup_m3_ipc *m3_ipc;

	m3_ipc = FUNC4(dev, sizeof(*m3_ipc), GFP_KERNEL);
	if (!m3_ipc)
		return -ENOMEM;

	res = FUNC11(pdev, IORESOURCE_MEM, 0);
	m3_ipc->ipc_mem_base = FUNC3(dev, res);
	if (FUNC0(m3_ipc->ipc_mem_base)) {
		FUNC2(dev, "could not ioremap ipc_mem\n");
		return FUNC1(m3_ipc->ipc_mem_base);
	}

	irq = FUNC10(pdev, 0);
	if (!irq) {
		FUNC2(&pdev->dev, "no irq resource\n");
		return -ENXIO;
	}

	ret = FUNC5(dev, irq, wkup_m3_txev_handler,
			       0, "wkup_m3_txev", m3_ipc);
	if (ret) {
		FUNC2(dev, "request_irq failed\n");
		return ret;
	}

	m3_ipc->mbox_client.dev = dev;
	m3_ipc->mbox_client.tx_done = NULL;
	m3_ipc->mbox_client.tx_prepare = NULL;
	m3_ipc->mbox_client.rx_callback = NULL;
	m3_ipc->mbox_client.tx_block = false;
	m3_ipc->mbox_client.knows_txdone = false;

	m3_ipc->mbox = FUNC8(&m3_ipc->mbox_client, 0);

	if (FUNC0(m3_ipc->mbox)) {
		FUNC2(dev, "IPC Request for A8->M3 Channel failed! %ld\n",
			FUNC1(m3_ipc->mbox));
		return FUNC1(m3_ipc->mbox);
	}

	if (FUNC9(dev->of_node, "ti,rproc", &rproc_phandle)) {
		FUNC2(&pdev->dev, "could not get rproc phandle\n");
		ret = -ENODEV;
		goto err_free_mbox;
	}

	m3_rproc = FUNC12(rproc_phandle);
	if (!m3_rproc) {
		FUNC2(&pdev->dev, "could not get rproc handle\n");
		ret = -EPROBE_DEFER;
		goto err_free_mbox;
	}

	m3_ipc->rproc = m3_rproc;
	m3_ipc->dev = dev;
	m3_ipc->state = M3_STATE_RESET;

	m3_ipc->ops = &ipc_ops;

	/*
	 * Wait for firmware loading completion in a thread so we
	 * can boot the wkup_m3 as soon as it's ready without holding
	 * up kernel boot
	 */
	task = FUNC6((void *)wkup_m3_rproc_boot_thread, m3_ipc,
			   "wkup_m3_rproc_loader");

	if (FUNC0(task)) {
		FUNC2(dev, "can't create rproc_boot thread\n");
		ret = FUNC1(task);
		goto err_put_rproc;
	}

	m3_ipc_state = m3_ipc;

	return 0;

err_put_rproc:
	FUNC13(m3_rproc);
err_free_mbox:
	FUNC7(m3_ipc->mbox);
	return ret;
}