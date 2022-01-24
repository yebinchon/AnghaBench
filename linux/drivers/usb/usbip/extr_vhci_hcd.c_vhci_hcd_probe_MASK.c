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
struct vhci {int /*<<< orphan*/ * vhci_hcd_ss; int /*<<< orphan*/ * vhci_hcd_hs; } ;
struct usb_hcd {int has_tt; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (struct usb_hcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  vhci_hc_driver ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct vhci             *vhci = *((void **)FUNC0(&pdev->dev));
	struct usb_hcd		*hcd_hs;
	struct usb_hcd		*hcd_ss;
	int			ret;

	FUNC8("name %s id %d\n", pdev->name, pdev->id);

	/*
	 * Allocate and initialize hcd.
	 * Our private data is also allocated automatically.
	 */
	hcd_hs = FUNC4(&vhci_hc_driver, &pdev->dev, FUNC1(&pdev->dev));
	if (!hcd_hs) {
		FUNC2("create primary hcd failed\n");
		return -ENOMEM;
	}
	hcd_hs->has_tt = 1;

	/*
	 * Finish generic HCD structure initialization and register.
	 * Call the driver's reset() and start() routines.
	 */
	ret = FUNC3(hcd_hs, 0, 0);
	if (ret != 0) {
		FUNC2("usb_add_hcd hs failed %d\n", ret);
		goto put_usb2_hcd;
	}

	hcd_ss = FUNC5(&vhci_hc_driver, &pdev->dev,
				       FUNC1(&pdev->dev), hcd_hs);
	if (!hcd_ss) {
		ret = -ENOMEM;
		FUNC2("create shared hcd failed\n");
		goto remove_usb2_hcd;
	}

	ret = FUNC3(hcd_ss, 0, 0);
	if (ret) {
		FUNC2("usb_add_hcd ss failed %d\n", ret);
		goto put_usb3_hcd;
	}

	FUNC8("bye\n");
	return 0;

put_usb3_hcd:
	FUNC6(hcd_ss);
remove_usb2_hcd:
	FUNC7(hcd_hs);
put_usb2_hcd:
	FUNC6(hcd_hs);
	vhci->vhci_hcd_hs = NULL;
	vhci->vhci_hcd_ss = NULL;
	return ret;
}