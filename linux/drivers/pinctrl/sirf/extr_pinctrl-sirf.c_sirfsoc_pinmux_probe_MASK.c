#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct sirfsoc_pmx {int /*<<< orphan*/  gpio_virtbase; int /*<<< orphan*/  rsc_virtbase; int /*<<< orphan*/  pmx; TYPE_3__* dev; } ;
struct sirfsoc_pinctrl_data {int /*<<< orphan*/  pads_cnt; int /*<<< orphan*/  pads; int /*<<< orphan*/  funcs_cnt; int /*<<< orphan*/  funcs; int /*<<< orphan*/  grps_cnt; int /*<<< orphan*/  grps; } ;
struct TYPE_9__ {struct device_node* of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_10__ {struct sirfsoc_pinctrl_data* data; } ;
struct TYPE_8__ {int /*<<< orphan*/  npins; int /*<<< orphan*/  pins; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 struct sirfsoc_pmx* FUNC4 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC7 (int /*<<< orphan*/ ,struct device_node*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_3__*,struct sirfsoc_pmx*) ; 
 int /*<<< orphan*/  pinmux_ids ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct sirfsoc_pmx*) ; 
 int /*<<< orphan*/  sirfsoc_pin_groups ; 
 int /*<<< orphan*/  sirfsoc_pingrp_cnt ; 
 TYPE_1__ sirfsoc_pinmux_desc ; 
 int /*<<< orphan*/  sirfsoc_pmx_functions ; 
 int /*<<< orphan*/  sirfsoc_pmxfunc_cnt ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	int ret;
	struct sirfsoc_pmx *spmx;
	struct device_node *np = pdev->dev.of_node;
	const struct sirfsoc_pinctrl_data *pdata;

	/* Create state holders etc for this driver */
	spmx = FUNC4(&pdev->dev, sizeof(*spmx), GFP_KERNEL);
	if (!spmx)
		return -ENOMEM;

	spmx->dev = &pdev->dev;

	FUNC9(pdev, spmx);

	spmx->gpio_virtbase = FUNC6(np, 0);
	if (!spmx->gpio_virtbase) {
		FUNC2(&pdev->dev, "can't map gpio registers\n");
		return -ENOMEM;
	}

	spmx->rsc_virtbase = FUNC10();
	if (!spmx->rsc_virtbase) {
		ret = -ENOMEM;
		FUNC2(&pdev->dev, "can't map rsc registers\n");
		goto out_no_rsc_remap;
	}

	pdata = FUNC7(pinmux_ids, np)->data;
	sirfsoc_pin_groups = pdata->grps;
	sirfsoc_pingrp_cnt = pdata->grps_cnt;
	sirfsoc_pmx_functions = pdata->funcs;
	sirfsoc_pmxfunc_cnt = pdata->funcs_cnt;
	sirfsoc_pinmux_desc.pins = pdata->pads;
	sirfsoc_pinmux_desc.npins = pdata->pads_cnt;


	/* Now register the pin controller and all pins it handles */
	spmx->pmx = FUNC8(&sirfsoc_pinmux_desc, &pdev->dev, spmx);
	if (FUNC0(spmx->pmx)) {
		FUNC2(&pdev->dev, "could not register SIRFSOC pinmux driver\n");
		ret = FUNC1(spmx->pmx);
		goto out_no_pmx;
	}

	FUNC3(&pdev->dev, "initialized SIRFSOC pinmux driver\n");

	return 0;

out_no_pmx:
	FUNC5(spmx->rsc_virtbase);
out_no_rsc_remap:
	FUNC5(spmx->gpio_virtbase);
	return ret;
}