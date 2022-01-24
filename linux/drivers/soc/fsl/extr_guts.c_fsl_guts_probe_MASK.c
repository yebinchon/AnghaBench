#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct resource {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct fsl_soc_die_attr {int /*<<< orphan*/  die; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  regs; int /*<<< orphan*/  little_endian; } ;
struct TYPE_5__ {char const* machine; void* revision; void* soc_id; void* family; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct resource*) ; 
 void* FUNC3 (struct device*,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_3__* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  fsl_soc_die ; 
 struct fsl_soc_die_attr* FUNC6 (int,int /*<<< orphan*/ ) ; 
 TYPE_3__* guts ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*,char const**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const**) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,...) ; 
 int /*<<< orphan*/  root ; 
 int /*<<< orphan*/  soc_dev ; 
 TYPE_1__ soc_dev_attr ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct device *dev = &pdev->dev;
	struct resource *res;
	const struct fsl_soc_die_attr *soc_die;
	const char *machine;
	u32 svr;

	/* Initialize guts */
	guts = FUNC4(dev, sizeof(*guts), GFP_KERNEL);
	if (!guts)
		return -ENOMEM;

	guts->little_endian = FUNC8(np, "little-endian");

	res = FUNC11(pdev, IORESOURCE_MEM, 0);
	guts->regs = FUNC2(dev, res);
	if (FUNC0(guts->regs))
		return FUNC1(guts->regs);

	/* Register soc device */
	root = FUNC7("/");
	if (FUNC9(root, "model", &machine))
		FUNC10(root, "compatible", 0, &machine);
	if (machine)
		soc_dev_attr.machine = machine;

	svr = FUNC5();
	soc_die = FUNC6(svr, fsl_soc_die);
	if (soc_die) {
		soc_dev_attr.family = FUNC3(dev, GFP_KERNEL,
						     "QorIQ %s", soc_die->die);
	} else {
		soc_dev_attr.family = FUNC3(dev, GFP_KERNEL, "QorIQ");
	}
	if (!soc_dev_attr.family)
		return -ENOMEM;
	soc_dev_attr.soc_id = FUNC3(dev, GFP_KERNEL,
					     "svr:0x%08x", svr);
	if (!soc_dev_attr.soc_id)
		return -ENOMEM;
	soc_dev_attr.revision = FUNC3(dev, GFP_KERNEL, "%d.%d",
					       (svr >>  4) & 0xf, svr & 0xf);
	if (!soc_dev_attr.revision)
		return -ENOMEM;

	soc_dev = FUNC13(&soc_dev_attr);
	if (FUNC0(soc_dev))
		return FUNC1(soc_dev);

	FUNC12("Machine: %s\n", soc_dev_attr.machine);
	FUNC12("SoC family: %s\n", soc_dev_attr.family);
	FUNC12("SoC ID: %s, Revision: %s\n",
		soc_dev_attr.soc_id, soc_dev_attr.revision);
	return 0;
}