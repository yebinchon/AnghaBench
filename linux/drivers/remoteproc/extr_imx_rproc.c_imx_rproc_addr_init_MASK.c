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
struct resource {int /*<<< orphan*/  start; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct imx_rproc_dcfg {int att_size; struct imx_rproc_att* att; } ;
struct imx_rproc_att {int flags; int /*<<< orphan*/  size; int /*<<< orphan*/  sa; } ;
struct imx_rproc {TYPE_1__* mem; struct imx_rproc_dcfg* dcfg; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  size; int /*<<< orphan*/  sys_addr; int /*<<< orphan*/  cpu_addr; } ;

/* Variables and functions */
 int ATT_OWN ; 
 int ENOMEM ; 
 int IMX7D_RPROC_MEM_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct resource*) ; 
 int FUNC5 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 int FUNC6 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct device_node* FUNC7 (struct device_node*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct resource*) ; 

__attribute__((used)) static int FUNC9(struct imx_rproc *priv,
			       struct platform_device *pdev)
{
	const struct imx_rproc_dcfg *dcfg = priv->dcfg;
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	int a, b = 0, err, nph;

	/* remap required addresses */
	for (a = 0; a < dcfg->att_size; a++) {
		const struct imx_rproc_att *att = &dcfg->att[a];

		if (!(att->flags & ATT_OWN))
			continue;

		if (b >= IMX7D_RPROC_MEM_MAX)
			break;

		priv->mem[b].cpu_addr = FUNC3(&pdev->dev,
						     att->sa, att->size);
		if (!priv->mem[b].cpu_addr) {
			FUNC2(dev, "devm_ioremap_resource failed\n");
			return -ENOMEM;
		}
		priv->mem[b].sys_addr = att->sa;
		priv->mem[b].size = att->size;
		b++;
	}

	/* memory-region is optional property */
	nph = FUNC6(np, "memory-region", NULL);
	if (nph <= 0)
		return 0;

	/* remap optional addresses */
	for (a = 0; a < nph; a++) {
		struct device_node *node;
		struct resource res;

		node = FUNC7(np, "memory-region", a);
		err = FUNC5(node, 0, &res);
		if (err) {
			FUNC2(dev, "unable to resolve memory region\n");
			return err;
		}

		if (b >= IMX7D_RPROC_MEM_MAX)
			break;

		priv->mem[b].cpu_addr = FUNC4(&pdev->dev, &res);
		if (FUNC0(priv->mem[b].cpu_addr)) {
			FUNC2(dev, "devm_ioremap_resource failed\n");
			err = FUNC1(priv->mem[b].cpu_addr);
			return err;
		}
		priv->mem[b].sys_addr = res.start;
		priv->mem[b].size = FUNC8(&res);
		b++;
	}

	return 0;
}