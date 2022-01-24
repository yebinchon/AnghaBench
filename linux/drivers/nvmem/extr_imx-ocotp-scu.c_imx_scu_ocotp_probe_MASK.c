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
struct ocotp_priv {TYPE_1__* data; struct device* dev; int /*<<< orphan*/  nvmem_ipc; } ;
struct nvmem_device {int dummy; } ;
struct TYPE_5__ {int size; struct ocotp_priv* priv; struct device* dev; } ;
struct TYPE_4__ {int nregs; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct nvmem_device*) ; 
 struct ocotp_priv* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct nvmem_device* FUNC2 (struct device*,TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__ imx_scu_ocotp_nvmem_config ; 
 TYPE_1__* FUNC4 (struct device*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct ocotp_priv *priv;
	struct nvmem_device *nvmem;
	int ret;

	priv = FUNC1(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	ret = FUNC3(&priv->nvmem_ipc);
	if (ret)
		return ret;

	priv->data = FUNC4(dev);
	priv->dev = dev;
	imx_scu_ocotp_nvmem_config.size = 4 * priv->data->nregs;
	imx_scu_ocotp_nvmem_config.dev = dev;
	imx_scu_ocotp_nvmem_config.priv = priv;
	nvmem = FUNC2(dev, &imx_scu_ocotp_nvmem_config);

	return FUNC0(nvmem);
}