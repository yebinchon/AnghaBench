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
struct usb_hcd {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct oxu_info {struct usb_hcd** hcd; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  OXU_CHIPIRQEN_SET ; 
 int FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,void*) ; 
 struct usb_hcd* FUNC4 (struct platform_device*,unsigned long,unsigned long,void*,int,int) ; 
 int FUNC5 (void*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct platform_device*,void*) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,int) ; 
 struct oxu_info* FUNC8 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev,
				unsigned long memstart, unsigned long memlen,
				void *base, int irq)
{
	struct oxu_info *info = FUNC8(pdev);
	struct usb_hcd *hcd;
	int ret;

	/* First time configuration at start up */
	FUNC3(pdev, base);

	ret = FUNC6(pdev, base);
	if (ret) {
		FUNC2(&pdev->dev, "no devices found!\n");
		return -ENODEV;
	}

	/* Create the OTG controller */
	hcd = FUNC4(pdev, memstart, memlen, base, irq, 1);
	if (FUNC0(hcd)) {
		FUNC2(&pdev->dev, "cannot create OTG controller!\n");
		ret = FUNC1(hcd);
		goto error_create_otg;
	}
	info->hcd[0] = hcd;

	/* Create the SPH host controller */
	hcd = FUNC4(pdev, memstart, memlen, base, irq, 0);
	if (FUNC0(hcd)) {
		FUNC2(&pdev->dev, "cannot create SPH controller!\n");
		ret = FUNC1(hcd);
		goto error_create_sph;
	}
	info->hcd[1] = hcd;

	FUNC7(base, OXU_CHIPIRQEN_SET,
		FUNC5(base, OXU_CHIPIRQEN_SET) | 3);

	return 0;

error_create_sph:
	FUNC10(info->hcd[0]);
	FUNC9(info->hcd[0]);

error_create_otg:
	return ret;
}