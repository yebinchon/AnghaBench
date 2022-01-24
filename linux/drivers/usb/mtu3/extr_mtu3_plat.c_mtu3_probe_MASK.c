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
struct ssusb_mtk {int dr_mode; int is_host; struct device* dev; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_USB_MTU3_GADGET ; 
 int /*<<< orphan*/  CONFIG_USB_MTU3_HOST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
#define  USB_DR_MODE_HOST 130 
#define  USB_DR_MODE_OTG 129 
#define  USB_DR_MODE_PERIPHERAL 128 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 struct ssusb_mtk* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct platform_device*,struct ssusb_mtk*) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct ssusb_mtk*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 int /*<<< orphan*/  FUNC12 (struct ssusb_mtk*) ; 
 int /*<<< orphan*/  FUNC13 (struct ssusb_mtk*) ; 
 int /*<<< orphan*/  FUNC14 (struct ssusb_mtk*) ; 
 int FUNC15 (struct ssusb_mtk*) ; 
 int /*<<< orphan*/  FUNC16 (struct ssusb_mtk*) ; 
 int FUNC17 (struct ssusb_mtk*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC18 (struct ssusb_mtk*) ; 
 int FUNC19 (struct ssusb_mtk*) ; 
 int /*<<< orphan*/  FUNC20 (struct ssusb_mtk*) ; 
 int FUNC21 (struct ssusb_mtk*) ; 

__attribute__((used)) static int FUNC22(struct platform_device *pdev)
{
	struct device_node *node = pdev->dev.of_node;
	struct device *dev = &pdev->dev;
	struct ssusb_mtk *ssusb;
	int ret = -ENOMEM;

	/* all elements are set to ZERO as default value */
	ssusb = FUNC4(dev, sizeof(*ssusb), GFP_KERNEL);
	if (!ssusb)
		return -ENOMEM;

	ret = FUNC5(dev, FUNC0(32));
	if (ret) {
		FUNC2(dev, "No suitable DMA config available\n");
		return -ENOTSUPP;
	}

	FUNC7(pdev, ssusb);
	ssusb->dev = dev;

	ret = FUNC6(pdev, ssusb);
	if (ret)
		return ret;

	FUNC12(ssusb);

	/* enable power domain */
	FUNC9(dev);
	FUNC10(dev);
	FUNC3(dev);

	ret = FUNC21(ssusb);
	if (ret)
		goto comm_init_err;

	FUNC18(ssusb);

	if (FUNC1(CONFIG_USB_MTU3_HOST))
		ssusb->dr_mode = USB_DR_MODE_HOST;
	else if (FUNC1(CONFIG_USB_MTU3_GADGET))
		ssusb->dr_mode = USB_DR_MODE_PERIPHERAL;

	/* default as host */
	ssusb->is_host = !(ssusb->dr_mode == USB_DR_MODE_PERIPHERAL);

	switch (ssusb->dr_mode) {
	case USB_DR_MODE_PERIPHERAL:
		ret = FUNC15(ssusb);
		if (ret) {
			FUNC2(dev, "failed to initialize gadget\n");
			goto comm_exit;
		}
		break;
	case USB_DR_MODE_HOST:
		ret = FUNC17(ssusb, node);
		if (ret) {
			FUNC2(dev, "failed to initialize host\n");
			goto comm_exit;
		}
		break;
	case USB_DR_MODE_OTG:
		ret = FUNC15(ssusb);
		if (ret) {
			FUNC2(dev, "failed to initialize gadget\n");
			goto comm_exit;
		}

		ret = FUNC17(ssusb, node);
		if (ret) {
			FUNC2(dev, "failed to initialize host\n");
			goto gadget_exit;
		}

		ret = FUNC19(ssusb);
		if (ret) {
			FUNC2(dev, "failed to initialize switch\n");
			goto host_exit;
		}
		break;
	default:
		FUNC2(dev, "unsupported mode: %d\n", ssusb->dr_mode);
		ret = -EINVAL;
		goto comm_exit;
	}

	return 0;

host_exit:
	FUNC16(ssusb);
gadget_exit:
	FUNC14(ssusb);
comm_exit:
	FUNC20(ssusb);
comm_init_err:
	FUNC11(dev);
	FUNC8(dev);
	FUNC13(ssusb);

	return ret;
}