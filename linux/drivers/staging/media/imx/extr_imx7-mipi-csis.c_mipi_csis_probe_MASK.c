#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  entity; } ;
struct TYPE_5__ {int /*<<< orphan*/  num_data_lanes; } ;
struct csi_state {scalar_t__ irq; int /*<<< orphan*/  lock; TYPE_2__ mipi_sd; int /*<<< orphan*/  clk_frequency; scalar_t__ wrap_clk; int /*<<< orphan*/  hs_settle; TYPE_1__ bus; int /*<<< orphan*/  events; struct device* dev; int /*<<< orphan*/  regs; struct platform_device* pdev; int /*<<< orphan*/  slock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct resource*) ; 
 struct csi_state* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct csi_state*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct csi_state*) ; 
 int FUNC11 (struct csi_state*) ; 
 int FUNC12 (struct csi_state*) ; 
 int /*<<< orphan*/  FUNC13 (struct csi_state*) ; 
 int /*<<< orphan*/  FUNC14 (struct csi_state*) ; 
 int /*<<< orphan*/  mipi_csis_events ; 
 int /*<<< orphan*/  mipi_csis_irq_handler ; 
 int FUNC15 (struct platform_device*,struct csi_state*) ; 
 int /*<<< orphan*/  FUNC16 (struct csi_state*) ; 
 int /*<<< orphan*/  FUNC17 (struct csi_state*) ; 
 int FUNC18 (struct device*,int) ; 
 int FUNC19 (TYPE_2__*,struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mipi_csis_subdev_ops ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC23 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct platform_device*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC25 (struct device*) ; 
 int /*<<< orphan*/  FUNC26 (struct device*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC29(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct resource *mem_res;
	struct csi_state *state;
	int ret;

	state = FUNC6(dev, sizeof(*state), GFP_KERNEL);
	if (!state)
		return -ENOMEM;

	FUNC27(&state->slock);

	state->pdev = pdev;
	state->dev = dev;

	ret = FUNC15(pdev, state);
	if (ret < 0) {
		FUNC2(dev, "Failed to parse device tree: %d\n", ret);
		return ret;
	}

	FUNC16(state);
	FUNC17(state);

	mem_res = FUNC23(pdev, IORESOURCE_MEM, 0);
	state->regs = FUNC5(dev, mem_res);
	if (FUNC0(state->regs))
		return FUNC1(state->regs);

	state->irq = FUNC22(pdev, 0);
	if (state->irq < 0)
		return state->irq;

	ret = FUNC12(state);
	if (ret < 0)
		return ret;

	ret = FUNC11(state);
	if (ret < 0) {
		FUNC2(state->dev, "failed to enable clocks: %d\n", ret);
		return ret;
	}

	ret = FUNC7(dev, state->irq, mipi_csis_irq_handler,
			       0, FUNC4(dev), state);
	if (ret) {
		FUNC2(dev, "Interrupt request failed\n");
		goto disable_clock;
	}

	FUNC24(pdev, &state->mipi_sd);

	FUNC21(&state->lock);
	ret = FUNC19(&state->mipi_sd, pdev,
				    &mipi_csis_subdev_ops);
	if (ret < 0)
		goto disable_clock;

	FUNC9(state->events, mipi_csis_events, sizeof(state->events));

	FUNC14(state);
	FUNC25(dev);
	if (!FUNC26(dev)) {
		ret = FUNC18(dev, true);
		if (ret < 0)
			goto unregister_all;
	}

	FUNC3(&pdev->dev, "lanes: %d, hs_settle: %d, wclk: %d, freq: %u\n",
		 state->bus.num_data_lanes, state->hs_settle,
		 state->wrap_clk ? 1 : 0, state->clk_frequency);

	return 0;

unregister_all:
	FUNC13(state);
	FUNC8(&state->mipi_sd.entity);
	FUNC28(&state->mipi_sd);
disable_clock:
	FUNC10(state);
	FUNC20(&state->lock);

	return ret;
}