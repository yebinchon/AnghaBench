#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct tegra_xusb_padctl_soc {TYPE_2__* ops; } ;
struct tegra_xusb_padctl {struct tegra_xusb_padctl* rst; TYPE_4__* supplies; TYPE_1__* soc; struct tegra_xusb_padctl* regs; int /*<<< orphan*/  lock; int /*<<< orphan*/  pads; int /*<<< orphan*/  lanes; int /*<<< orphan*/  ports; } ;
struct resource {int dummy; } ;
struct TYPE_16__ {struct device_node* of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct of_device_id {struct tegra_xusb_padctl_soc* data; } ;
struct device_node {int dummy; } ;
struct TYPE_17__ {int /*<<< orphan*/  supply; } ;
struct TYPE_15__ {int /*<<< orphan*/  (* remove ) (struct tegra_xusb_padctl*) ;struct tegra_xusb_padctl* (* probe ) (TYPE_3__*,struct tegra_xusb_padctl_soc const*) ;} ;
struct TYPE_14__ {unsigned int num_supplies; int /*<<< orphan*/ * supply_names; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (struct tegra_xusb_padctl*) ; 
 int FUNC2 (struct tegra_xusb_padctl*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*) ; 
 struct tegra_xusb_padctl* FUNC5 (TYPE_3__*,struct resource*) ; 
 TYPE_4__* FUNC6 (TYPE_3__*,unsigned int,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_3__*,unsigned int,TYPE_4__*) ; 
 struct tegra_xusb_padctl* FUNC8 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct device_node* FUNC10 (struct device_node*,char*) ; 
 struct of_device_id* FUNC11 (int /*<<< orphan*/ ,struct device_node*) ; 
 int /*<<< orphan*/  FUNC12 (struct device_node*) ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct tegra_xusb_padctl*) ; 
 int /*<<< orphan*/  FUNC15 (unsigned int,TYPE_4__*) ; 
 int FUNC16 (unsigned int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC17 (struct tegra_xusb_padctl*) ; 
 int FUNC18 (struct tegra_xusb_padctl*) ; 
 struct tegra_xusb_padctl* FUNC19 (TYPE_3__*,struct tegra_xusb_padctl_soc const*) ; 
 int /*<<< orphan*/  FUNC20 (struct tegra_xusb_padctl*) ; 
 int FUNC21 (struct platform_device*) ; 
 int /*<<< orphan*/  tegra_xusb_padctl_of_match ; 
 int /*<<< orphan*/  FUNC22 (struct tegra_xusb_padctl*) ; 
 int FUNC23 (struct tegra_xusb_padctl*) ; 
 int FUNC24 (struct tegra_xusb_padctl*) ; 

__attribute__((used)) static int FUNC25(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	const struct tegra_xusb_padctl_soc *soc;
	struct tegra_xusb_padctl *padctl;
	const struct of_device_id *match;
	struct resource *res;
	unsigned int i;
	int err;

	/* for backwards compatibility with old device trees */
	np = FUNC10(np, "pads");
	if (!np) {
		FUNC4(&pdev->dev, "deprecated DT, using legacy driver\n");
		return FUNC21(pdev);
	}

	FUNC12(np);

	match = FUNC11(tegra_xusb_padctl_of_match, pdev->dev.of_node);
	soc = match->data;

	padctl = soc->ops->probe(&pdev->dev, soc);
	if (FUNC1(padctl))
		return FUNC2(padctl);

	FUNC14(pdev, padctl);
	FUNC0(&padctl->ports);
	FUNC0(&padctl->lanes);
	FUNC0(&padctl->pads);
	FUNC9(&padctl->lock);

	res = FUNC13(pdev, IORESOURCE_MEM, 0);
	padctl->regs = FUNC5(&pdev->dev, res);
	if (FUNC1(padctl->regs)) {
		err = FUNC2(padctl->regs);
		goto remove;
	}

	padctl->rst = FUNC8(&pdev->dev, NULL);
	if (FUNC1(padctl->rst)) {
		err = FUNC2(padctl->rst);
		goto remove;
	}

	padctl->supplies = FUNC6(&pdev->dev, padctl->soc->num_supplies,
					sizeof(*padctl->supplies), GFP_KERNEL);
	if (!padctl->supplies) {
		err = -ENOMEM;
		goto remove;
	}

	for (i = 0; i < padctl->soc->num_supplies; i++)
		padctl->supplies[i].supply = padctl->soc->supply_names[i];

	err = FUNC7(&pdev->dev, padctl->soc->num_supplies,
				      padctl->supplies);
	if (err < 0) {
		FUNC3(&pdev->dev, "failed to get regulators: %d\n", err);
		goto remove;
	}

	err = FUNC18(padctl->rst);
	if (err < 0)
		goto remove;

	err = FUNC16(padctl->soc->num_supplies,
				    padctl->supplies);
	if (err < 0) {
		FUNC3(&pdev->dev, "failed to enable supplies: %d\n", err);
		goto reset;
	}

	err = FUNC23(padctl);
	if (err < 0) {
		FUNC3(&pdev->dev, "failed to setup pads: %d\n", err);
		goto power_down;
	}

	err = FUNC24(padctl);
	if (err) {
		FUNC3(&pdev->dev, "failed to setup XUSB ports: %d\n", err);
		goto remove_pads;
	}

	return 0;

remove_pads:
	FUNC22(padctl);
power_down:
	FUNC15(padctl->soc->num_supplies, padctl->supplies);
reset:
	FUNC17(padctl->rst);
remove:
	soc->ops->remove(padctl);
	return err;
}