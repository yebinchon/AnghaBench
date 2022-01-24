#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct ocotp_priv {TYPE_2__* config; TYPE_1__* params; int /*<<< orphan*/  clk; int /*<<< orphan*/  base; struct device* dev; } ;
struct nvmem_device {int dummy; } ;
struct TYPE_5__ {int size; struct ocotp_priv* priv; struct device* dev; } ;
struct TYPE_4__ {int nregs; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nvmem_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ *) ; 
 struct ocotp_priv* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct nvmem_device* FUNC5 (struct device*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,int /*<<< orphan*/ ) ; 
 TYPE_2__ imx_ocotp_nvmem_config ; 
 TYPE_1__* FUNC7 (struct device*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct ocotp_priv *priv;
	struct nvmem_device *nvmem;

	priv = FUNC4(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->dev = dev;

	priv->base = FUNC6(pdev, 0);
	if (FUNC0(priv->base))
		return FUNC1(priv->base);

	priv->clk = FUNC3(dev, NULL);
	if (FUNC0(priv->clk))
		return FUNC1(priv->clk);

	priv->params = FUNC7(&pdev->dev);
	imx_ocotp_nvmem_config.size = 4 * priv->params->nregs;
	imx_ocotp_nvmem_config.dev = dev;
	imx_ocotp_nvmem_config.priv = priv;
	priv->config = &imx_ocotp_nvmem_config;
	nvmem = FUNC5(dev, &imx_ocotp_nvmem_config);


	return FUNC2(nvmem);
}