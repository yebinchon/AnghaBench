#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct zynqmp_nvmem_data {int /*<<< orphan*/  nvmem; struct device* dev; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_3__ {struct zynqmp_nvmem_data* priv; int /*<<< orphan*/  reg_read; struct device* dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct zynqmp_nvmem_data* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,TYPE_1__*) ; 
 TYPE_1__ econfig ; 
 int /*<<< orphan*/  eemi_ops ; 
 int /*<<< orphan*/  zynqmp_nvmem_read ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct zynqmp_nvmem_data *priv;

	priv = FUNC3(dev, sizeof(struct zynqmp_nvmem_data), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	eemi_ops = FUNC5();
	if (FUNC0(eemi_ops))
		return FUNC1(eemi_ops);

	priv->dev = dev;
	econfig.dev = dev;
	econfig.reg_read = zynqmp_nvmem_read;
	econfig.priv = priv;

	priv->nvmem = FUNC4(dev, &econfig);

	return FUNC2(priv->nvmem);
}