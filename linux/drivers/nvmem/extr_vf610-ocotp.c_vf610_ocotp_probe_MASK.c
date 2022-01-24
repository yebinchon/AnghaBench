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
struct vf610_ocotp {int /*<<< orphan*/  nvmem; int /*<<< orphan*/  timing; struct device* dev; int /*<<< orphan*/  clk; int /*<<< orphan*/  base; } ;
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_3__ {struct device* dev; struct vf610_ocotp* priv; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct resource*) ; 
 struct vf610_ocotp* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,TYPE_1__*) ; 
 TYPE_1__ ocotp_config ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct resource*) ; 
 int /*<<< orphan*/  FUNC10 (struct vf610_ocotp*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct resource *res;
	struct vf610_ocotp *ocotp_dev;

	ocotp_dev = FUNC6(dev, sizeof(struct vf610_ocotp), GFP_KERNEL);
	if (!ocotp_dev)
		return -ENOMEM;

	res = FUNC8(pdev, IORESOURCE_MEM, 0);
	ocotp_dev->base = FUNC5(dev, res);
	if (FUNC0(ocotp_dev->base))
		return FUNC1(ocotp_dev->base);

	ocotp_dev->clk = FUNC4(dev, NULL);
	if (FUNC0(ocotp_dev->clk)) {
		FUNC3(dev, "failed getting clock, err = %ld\n",
			FUNC1(ocotp_dev->clk));
		return FUNC1(ocotp_dev->clk);
	}
	ocotp_dev->dev = dev;
	ocotp_dev->timing = FUNC10(ocotp_dev);

	ocotp_config.size = FUNC9(res);
	ocotp_config.priv = ocotp_dev;
	ocotp_config.dev = dev;

	ocotp_dev->nvmem = FUNC7(dev, &ocotp_config);

	return FUNC2(ocotp_dev->nvmem);
}