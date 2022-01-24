#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {struct imx_iim_drvdata* data; } ;
struct nvmem_device {int dummy; } ;
struct nvmem_config {char* name; int read_only; int word_size; int stride; struct iim_priv* priv; int /*<<< orphan*/  size; struct device* dev; int /*<<< orphan*/  reg_read; } ;
struct imx_iim_drvdata {int /*<<< orphan*/  nregs; } ;
struct iim_priv {int /*<<< orphan*/  clk; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nvmem_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ *) ; 
 struct iim_priv* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct nvmem_device* FUNC5 (struct device*,struct nvmem_config*) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  imx_iim_dt_ids ; 
 int /*<<< orphan*/  imx_iim_read ; 
 struct of_device_id* FUNC7 (int /*<<< orphan*/ ,struct device*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	const struct of_device_id *of_id;
	struct device *dev = &pdev->dev;
	struct iim_priv *iim;
	struct nvmem_device *nvmem;
	struct nvmem_config cfg = {};
	const struct imx_iim_drvdata *drvdata = NULL;

	iim = FUNC4(dev, sizeof(*iim), GFP_KERNEL);
	if (!iim)
		return -ENOMEM;

	iim->base = FUNC6(pdev, 0);
	if (FUNC0(iim->base))
		return FUNC1(iim->base);

	of_id = FUNC7(imx_iim_dt_ids, dev);
	if (!of_id)
		return -ENODEV;

	drvdata = of_id->data;

	iim->clk = FUNC3(dev, NULL);
	if (FUNC0(iim->clk))
		return FUNC1(iim->clk);

	cfg.name = "imx-iim",
	cfg.read_only = true,
	cfg.word_size = 1,
	cfg.stride = 1,
	cfg.reg_read = imx_iim_read,
	cfg.dev = dev;
	cfg.size = drvdata->nregs;
	cfg.priv = iim;

	nvmem = FUNC5(dev, &cfg);

	return FUNC2(nvmem);
}