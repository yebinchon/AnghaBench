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
struct st_slim_rproc {scalar_t__* clks; void* peri; void* slimcore; TYPE_1__* mem; struct rproc* rproc; } ;
struct rproc {int has_iommu; struct st_slim_rproc* priv; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  size; int /*<<< orphan*/  bus_addr; void* cpu_addr; } ;

/* Variables and functions */
 int FUNC0 (char**) ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct st_slim_rproc* FUNC1 (int) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 int ST_SLIM_MAX_CLK ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 void* FUNC6 (struct device*,struct resource*) ; 
 char** mem_names ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*,char*) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct resource*) ; 
 int FUNC10 (struct rproc*) ; 
 struct rproc* FUNC11 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct rproc*) ; 
 int /*<<< orphan*/  FUNC13 (struct st_slim_rproc*) ; 
 int FUNC14 (struct st_slim_rproc*) ; 
 int FUNC15 (struct st_slim_rproc*,struct device*) ; 
 int /*<<< orphan*/  slim_rproc_ops ; 

struct st_slim_rproc *FUNC16(struct platform_device *pdev,
				char *fw_name)
{
	struct device *dev = &pdev->dev;
	struct st_slim_rproc *slim_rproc;
	struct device_node *np = dev->of_node;
	struct rproc *rproc;
	struct resource *res;
	int err, i;

	if (!fw_name)
		return FUNC1(-EINVAL);

	if (!FUNC7(np, "st,slim-rproc"))
		return FUNC1(-EINVAL);

	rproc = FUNC11(dev, np->name, &slim_rproc_ops,
			fw_name, sizeof(*slim_rproc));
	if (!rproc)
		return FUNC1(-ENOMEM);

	rproc->has_iommu = false;

	slim_rproc = rproc->priv;
	slim_rproc->rproc = rproc;

	/* get imem and dmem */
	for (i = 0; i < FUNC0(mem_names); i++) {
		res = FUNC8(pdev, IORESOURCE_MEM,
						mem_names[i]);

		slim_rproc->mem[i].cpu_addr = FUNC6(dev, res);
		if (FUNC2(slim_rproc->mem[i].cpu_addr)) {
			FUNC5(&pdev->dev, "devm_ioremap_resource failed\n");
			err = FUNC3(slim_rproc->mem[i].cpu_addr);
			goto err;
		}
		slim_rproc->mem[i].bus_addr = res->start;
		slim_rproc->mem[i].size = FUNC9(res);
	}

	res = FUNC8(pdev, IORESOURCE_MEM, "slimcore");
	slim_rproc->slimcore = FUNC6(dev, res);
	if (FUNC2(slim_rproc->slimcore)) {
		FUNC5(&pdev->dev, "failed to ioremap slimcore IO\n");
		err = FUNC3(slim_rproc->slimcore);
		goto err;
	}

	res = FUNC8(pdev, IORESOURCE_MEM, "peripherals");
	slim_rproc->peri = FUNC6(dev, res);
	if (FUNC2(slim_rproc->peri)) {
		FUNC5(&pdev->dev, "failed to ioremap peripherals IO\n");
		err = FUNC3(slim_rproc->peri);
		goto err;
	}

	err = FUNC15(slim_rproc, dev);
	if (err)
		goto err;

	err = FUNC14(slim_rproc);
	if (err) {
		FUNC5(dev, "Failed to enable clocks\n");
		goto err_clk_put;
	}

	/* Register as a remoteproc device */
	err = FUNC10(rproc);
	if (err) {
		FUNC5(dev, "registration of slim remoteproc failed\n");
		goto err_clk_dis;
	}

	return slim_rproc;

err_clk_dis:
	FUNC13(slim_rproc);
err_clk_put:
	for (i = 0; i < ST_SLIM_MAX_CLK && slim_rproc->clks[i]; i++)
		FUNC4(slim_rproc->clks[i]);
err:
	FUNC12(rproc);
	return FUNC1(err);
}