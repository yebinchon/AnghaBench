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
typedef  int /*<<< orphan*/  u32 ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mspusb_device {int /*<<< orphan*/ * mab_regs; int /*<<< orphan*/ * usbid_regs; struct platform_device dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct resource* FUNC3 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct resource*) ; 

__attribute__((used)) static int FUNC7(struct mspusb_device *dev)
{
	struct resource *res;
	struct platform_device *pdev = &dev->dev;
	u32 res_len;
	int retval;

	/* MAB register space */
	res = FUNC3(pdev, IORESOURCE_MEM, 1);
	if (res == NULL)
		return -ENOMEM;
	res_len = FUNC6(res);
	if (!FUNC5(res->start, res_len, "mab regs"))
		return -EBUSY;

	dev->mab_regs = FUNC1(res->start, res_len);
	if (dev->mab_regs == NULL) {
		retval = -ENOMEM;
		goto err1;
	}

	/* MSP USB register space */
	res = FUNC3(pdev, IORESOURCE_MEM, 2);
	if (res == NULL) {
		retval = -ENOMEM;
		goto err2;
	}
	res_len = FUNC6(res);
	if (!FUNC5(res->start, res_len, "usbid regs")) {
		retval = -EBUSY;
		goto err2;
	}
	dev->usbid_regs = FUNC1(res->start, res_len);
	if (dev->usbid_regs == NULL) {
		retval = -ENOMEM;
		goto err3;
	}

	return 0;
err3:
	res = FUNC3(pdev, IORESOURCE_MEM, 2);
	res_len = FUNC6(res);
	FUNC4(res->start, res_len);
err2:
	FUNC2(dev->mab_regs);
err1:
	res = FUNC3(pdev, IORESOURCE_MEM, 1);
	res_len = FUNC6(res);
	FUNC4(res->start, res_len);
	FUNC0(&pdev->dev, "Failed to map non-EHCI regs.\n");
	return retval;
}