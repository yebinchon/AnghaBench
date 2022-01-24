#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ hw_disabled; } ;
struct TYPE_14__ {int /*<<< orphan*/  link_id; TYPE_1__ prop; TYPE_2__* ops; int /*<<< orphan*/ * dev; } ;
struct TYPE_15__ {TYPE_3__ bus; int /*<<< orphan*/ * dev; scalar_t__ msg_count; int /*<<< orphan*/  instance; int /*<<< orphan*/  registers; } ;
struct sdw_intel {TYPE_4__ cdns; TYPE_10__* res; int /*<<< orphan*/  instance; } ;
struct sdw_cdns_stream_config {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  id; } ;
struct TYPE_13__ {int /*<<< orphan*/  read_prop; } ;
struct TYPE_11__ {int irq; int /*<<< orphan*/  registers; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 TYPE_10__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct sdw_intel* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,struct sdw_intel*) ; 
 int /*<<< orphan*/  FUNC5 (struct sdw_intel*) ; 
 int /*<<< orphan*/  FUNC6 (struct sdw_intel*) ; 
 int /*<<< orphan*/  FUNC7 (struct sdw_intel*) ; 
 int /*<<< orphan*/  FUNC8 (struct sdw_intel*,struct sdw_cdns_stream_config*) ; 
 int /*<<< orphan*/  intel_prop_read ; 
 int FUNC9 (struct sdw_intel*) ; 
 int /*<<< orphan*/  FUNC10 (struct sdw_intel*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct sdw_intel*) ; 
 int FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int FUNC13 (TYPE_3__*) ; 
 int FUNC14 (TYPE_4__*) ; 
 int FUNC15 (TYPE_4__*) ; 
 int /*<<< orphan*/  sdw_cdns_irq ; 
 int FUNC16 (TYPE_4__*,struct sdw_cdns_stream_config) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*) ; 
 int /*<<< orphan*/  sdw_cdns_thread ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*) ; 
 TYPE_2__ sdw_intel_ops ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	struct sdw_cdns_stream_config config;
	struct sdw_intel *sdw;
	int ret;

	sdw = FUNC3(&pdev->dev, sizeof(*sdw), GFP_KERNEL);
	if (!sdw)
		return -ENOMEM;

	sdw->instance = pdev->id;
	sdw->res = FUNC1(&pdev->dev);
	sdw->cdns.dev = &pdev->dev;
	sdw->cdns.registers = sdw->res->registers;
	sdw->cdns.instance = sdw->instance;
	sdw->cdns.msg_count = 0;
	sdw->cdns.bus.dev = &pdev->dev;
	sdw->cdns.bus.link_id = pdev->id;

	FUNC17(&sdw->cdns);

	/* Set property read ops */
	sdw_intel_ops.read_prop = intel_prop_read;
	sdw->cdns.bus.ops = &sdw_intel_ops;

	FUNC11(pdev, sdw);

	ret = FUNC13(&sdw->cdns.bus);
	if (ret) {
		FUNC0(&pdev->dev, "sdw_add_bus_master fail: %d\n", ret);
		goto err_master_reg;
	}

	if (sdw->cdns.bus.prop.hw_disabled) {
		FUNC2(&pdev->dev, "SoundWire master %d is disabled, ignoring\n",
			 sdw->cdns.bus.link_id);
		return 0;
	}

	/* Initialize shim and controller */
	FUNC6(sdw);
	FUNC10(sdw);

	ret = FUNC15(&sdw->cdns);
	if (ret)
		goto err_init;

	ret = FUNC14(&sdw->cdns);

	/* Read the PDI config and initialize cadence PDI */
	FUNC8(sdw, &config);
	ret = FUNC16(&sdw->cdns, config);
	if (ret)
		goto err_init;

	FUNC7(sdw);

	/* Acquire IRQ */
	ret = FUNC12(sdw->res->irq, sdw_cdns_irq, sdw_cdns_thread,
				   IRQF_SHARED, KBUILD_MODNAME, &sdw->cdns);
	if (ret < 0) {
		FUNC0(sdw->cdns.dev, "unable to grab IRQ %d, disabling device\n",
			sdw->res->irq);
		goto err_init;
	}

	/* Register DAIs */
	ret = FUNC9(sdw);
	if (ret) {
		FUNC0(sdw->cdns.dev, "DAI registration failed: %d\n", ret);
		FUNC19(sdw->cdns.dev);
		goto err_dai;
	}

	FUNC5(sdw);

	return 0;

err_dai:
	FUNC4(sdw->res->irq, sdw);
err_init:
	FUNC18(&sdw->cdns.bus);
err_master_reg:
	return ret;
}