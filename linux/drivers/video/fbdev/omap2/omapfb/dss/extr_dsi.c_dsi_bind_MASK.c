#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct TYPE_14__ {scalar_t__ of_node; } ;
struct platform_device {int id; TYPE_2__ dev; } ;
struct of_device_id {struct dsi_module_id_data* data; } ;
struct dsi_module_id_data {scalar_t__ address; int id; } ;
struct TYPE_13__ {int /*<<< orphan*/  last_reset; } ;
struct dsi_data {scalar_t__ irq; int module_id; int num_lanes_supported; int /*<<< orphan*/  line_buffer_size; TYPE_11__* vc; struct platform_device* pdev; void* pll_base; void* phy_base; void* proto_base; int /*<<< orphan*/  te_timer; int /*<<< orphan*/  framedone_timeout_work; int /*<<< orphan*/  bus_lock; int /*<<< orphan*/  lock; TYPE_1__ irq_stats; int /*<<< orphan*/  irq_stats_lock; scalar_t__ errors; int /*<<< orphan*/  errors_lock; int /*<<< orphan*/  irq_lock; } ;
struct device {int dummy; } ;
struct TYPE_12__ {scalar_t__ vc_id; int /*<<< orphan*/ * dssdev; int /*<<< orphan*/  source; } ;

/* Variables and functions */
 int FUNC0 (TYPE_11__*) ; 
 int /*<<< orphan*/  DSI_GNQ ; 
 scalar_t__ DSI_PHY_OFFSET ; 
 scalar_t__ DSI_PHY_SZ ; 
 scalar_t__ DSI_PLL_OFFSET ; 
 scalar_t__ DSI_PLL_SZ ; 
 scalar_t__ DSI_PROTO_SZ ; 
 int /*<<< orphan*/  DSI_REVISION ; 
 int /*<<< orphan*/  DSI_VC_SOURCE_L4 ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FEAT_DSI_GNQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int FUNC4 (struct platform_device*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,struct dsi_data*) ; 
 void* FUNC8 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct dsi_data* FUNC9 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct platform_device*) ; 
 int /*<<< orphan*/  dsi1_dump_irqs ; 
 int /*<<< orphan*/  dsi1_dump_regs ; 
 int /*<<< orphan*/  dsi2_dump_irqs ; 
 int /*<<< orphan*/  dsi2_dump_regs ; 
 int /*<<< orphan*/  dsi_framedone_timeout_work_callback ; 
 int FUNC11 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*) ; 
 int /*<<< orphan*/  dsi_of_match ; 
 int FUNC15 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct platform_device*) ; 
 int /*<<< orphan*/  dsi_te_timeout ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC23 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC24 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  omap_dsi_irq_handler ; 
 scalar_t__ FUNC25 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC26 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource* FUNC27 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC30 (struct resource*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC34 (struct device*) ; 

__attribute__((used)) static int FUNC35(struct device *dev, struct device *master, void *data)
{
	struct platform_device *dsidev = FUNC34(dev);
	u32 rev;
	int r, i;
	struct dsi_data *dsi;
	struct resource *dsi_mem;
	struct resource *res;
	struct resource temp_res;

	dsi = FUNC9(&dsidev->dev, sizeof(*dsi), GFP_KERNEL);
	if (!dsi)
		return -ENOMEM;

	dsi->pdev = dsidev;
	FUNC7(&dsidev->dev, dsi);

	FUNC32(&dsi->irq_lock);
	FUNC32(&dsi->errors_lock);
	dsi->errors = 0;

#ifdef CONFIG_FB_OMAP2_DSS_COLLECT_IRQ_STATS
	spin_lock_init(&dsi->irq_stats_lock);
	dsi->irq_stats.last_reset = jiffies;
#endif

	FUNC22(&dsi->lock);
	FUNC31(&dsi->bus_lock, 1);

	FUNC3(&dsi->framedone_timeout_work,
			     dsi_framedone_timeout_work_callback);

#ifdef DSI_CATCH_MISSING_TE
	timer_setup(&dsi->te_timer, dsi_te_timeout, 0);
#endif

	res = FUNC27(dsidev, IORESOURCE_MEM, "proto");
	if (!res) {
		res = FUNC26(dsidev, IORESOURCE_MEM, 0);
		if (!res) {
			FUNC1("can't get IORESOURCE_MEM DSI\n");
			return -EINVAL;
		}

		temp_res.start = res->start;
		temp_res.end = temp_res.start + DSI_PROTO_SZ - 1;
		res = &temp_res;
	}

	dsi_mem = res;

	dsi->proto_base = FUNC8(&dsidev->dev, res->start,
		FUNC30(res));
	if (!dsi->proto_base) {
		FUNC1("can't ioremap DSI protocol engine\n");
		return -ENOMEM;
	}

	res = FUNC27(dsidev, IORESOURCE_MEM, "phy");
	if (!res) {
		res = FUNC26(dsidev, IORESOURCE_MEM, 0);
		if (!res) {
			FUNC1("can't get IORESOURCE_MEM DSI\n");
			return -EINVAL;
		}

		temp_res.start = res->start + DSI_PHY_OFFSET;
		temp_res.end = temp_res.start + DSI_PHY_SZ - 1;
		res = &temp_res;
	}

	dsi->phy_base = FUNC8(&dsidev->dev, res->start,
		FUNC30(res));
	if (!dsi->phy_base) {
		FUNC1("can't ioremap DSI PHY\n");
		return -ENOMEM;
	}

	res = FUNC27(dsidev, IORESOURCE_MEM, "pll");
	if (!res) {
		res = FUNC26(dsidev, IORESOURCE_MEM, 0);
		if (!res) {
			FUNC1("can't get IORESOURCE_MEM DSI\n");
			return -EINVAL;
		}

		temp_res.start = res->start + DSI_PLL_OFFSET;
		temp_res.end = temp_res.start + DSI_PLL_SZ - 1;
		res = &temp_res;
	}

	dsi->pll_base = FUNC8(&dsidev->dev, res->start,
		FUNC30(res));
	if (!dsi->pll_base) {
		FUNC1("can't ioremap DSI PLL\n");
		return -ENOMEM;
	}

	dsi->irq = FUNC25(dsi->pdev, 0);
	if (dsi->irq < 0) {
		FUNC1("platform_get_irq failed\n");
		return -ENODEV;
	}

	r = FUNC10(&dsidev->dev, dsi->irq, omap_dsi_irq_handler,
			     IRQF_SHARED, FUNC6(&dsidev->dev), dsi->pdev);
	if (r < 0) {
		FUNC1("request_irq failed\n");
		return r;
	}

	if (dsidev->dev.of_node) {
		const struct of_device_id *match;
		const struct dsi_module_id_data *d;

		match = FUNC23(dsi_of_match, dsidev->dev.of_node);
		if (!match) {
			FUNC1("unsupported DSI module\n");
			return -ENODEV;
		}

		d = match->data;

		while (d->address != 0 && d->address != dsi_mem->start)
			d++;

		if (d->address == 0) {
			FUNC1("unsupported DSI module\n");
			return -ENODEV;
		}

		dsi->module_id = d->id;
	} else {
		dsi->module_id = dsidev->id;
	}

	/* DSI VCs initialization */
	for (i = 0; i < FUNC0(dsi->vc); i++) {
		dsi->vc[i].source = DSI_VC_SOURCE_L4;
		dsi->vc[i].dssdev = NULL;
		dsi->vc[i].vc_id = 0;
	}

	r = FUNC11(dsidev);
	if (r)
		return r;

	FUNC14(dsidev);

	FUNC29(&dsidev->dev);

	r = FUNC17(dsidev);
	if (r)
		goto err_runtime_get;

	rev = FUNC16(dsidev, DSI_REVISION);
	FUNC5(&dsidev->dev, "OMAP DSI rev %d.%d\n",
	       FUNC2(rev, 7, 4), FUNC2(rev, 3, 0));

	/* DSI on OMAP3 doesn't have register DSI_GNQ, set number
	 * of data to 3 by default */
	if (FUNC21(FEAT_DSI_GNQ))
		/* NB_DATA_LANES */
		dsi->num_lanes_supported = 1 + FUNC4(dsidev, DSI_GNQ, 11, 9);
	else
		dsi->num_lanes_supported = 3;

	dsi->line_buffer_size = FUNC12(dsidev);

	FUNC13(dsidev);

	if (dsidev->dev.of_node) {
		r = FUNC15(dsidev);
		if (r) {
			FUNC1("Invalid DSI DT data\n");
			goto err_probe_of;
		}

		r = FUNC24(dsidev->dev.of_node, NULL, NULL,
			&dsidev->dev);
		if (r)
			FUNC1("Failed to populate DSI child devices: %d\n", r);
	}

	FUNC18(dsidev);

	if (dsi->module_id == 0)
		FUNC20("dsi1_regs", dsi1_dump_regs);
	else if (dsi->module_id == 1)
		FUNC20("dsi2_regs", dsi2_dump_regs);

#ifdef CONFIG_FB_OMAP2_DSS_COLLECT_IRQ_STATS
	if (dsi->module_id == 0)
		dss_debugfs_create_file("dsi1_irqs", dsi1_dump_irqs);
	else if (dsi->module_id == 1)
		dss_debugfs_create_file("dsi2_irqs", dsi2_dump_irqs);
#endif

	return 0;

err_probe_of:
	FUNC19(dsidev);
	FUNC18(dsidev);

err_runtime_get:
	FUNC28(&dsidev->dev);
	return r;
}