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
struct otg_switch_mtk {void* manual_drd_enabled; void* is_u3_drd; void* edev; void* role_sw_used; void* vbus; } ;
struct ssusb_mtk {int num_phys; int /*<<< orphan*/  u3p_dis_msk; int /*<<< orphan*/  dr_mode; struct device* dev; void* ippc_base; void** phys; void* dma_clk; void* mcu_clk; void* ref_clk; void* sys_clk; void* vusb33; struct otg_switch_mtk otg_switch; } ;
struct resource {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  USB_DR_MODE_HOST ; 
 int /*<<< orphan*/  USB_DR_MODE_OTG ; 
 int /*<<< orphan*/  USB_DR_MODE_PERIPHERAL ; 
 int /*<<< orphan*/  USB_DR_MODE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,char*) ; 
 void* FUNC4 (struct device*,char*) ; 
 void* FUNC5 (struct device*,char*) ; 
 void* FUNC6 (struct device*,struct resource*) ; 
 void** FUNC7 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 void* FUNC8 (struct device*,struct device_node*,int) ; 
 void* FUNC9 (struct device*,char*) ; 
 void* FUNC10 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct device_node*,char*,char*) ; 
 void* FUNC12 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int FUNC15 (struct ssusb_mtk*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC16 (struct device*) ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev, struct ssusb_mtk *ssusb)
{
	struct device_node *node = pdev->dev.of_node;
	struct otg_switch_mtk *otg_sx = &ssusb->otg_switch;
	struct device *dev = &pdev->dev;
	struct resource *res;
	int i;
	int ret;

	ssusb->vusb33 = FUNC9(dev, "vusb33");
	if (FUNC0(ssusb->vusb33)) {
		FUNC2(dev, "failed to get vusb33\n");
		return FUNC1(ssusb->vusb33);
	}

	ssusb->sys_clk = FUNC4(dev, "sys_ck");
	if (FUNC0(ssusb->sys_clk)) {
		FUNC2(dev, "failed to get sys clock\n");
		return FUNC1(ssusb->sys_clk);
	}

	ssusb->ref_clk = FUNC5(dev, "ref_ck");
	if (FUNC0(ssusb->ref_clk))
		return FUNC1(ssusb->ref_clk);

	ssusb->mcu_clk = FUNC5(dev, "mcu_ck");
	if (FUNC0(ssusb->mcu_clk))
		return FUNC1(ssusb->mcu_clk);

	ssusb->dma_clk = FUNC5(dev, "dma_ck");
	if (FUNC0(ssusb->dma_clk))
		return FUNC1(ssusb->dma_clk);

	ssusb->num_phys = FUNC11(node,
			"phys", "#phy-cells");
	if (ssusb->num_phys > 0) {
		ssusb->phys = FUNC7(dev, ssusb->num_phys,
					sizeof(*ssusb->phys), GFP_KERNEL);
		if (!ssusb->phys)
			return -ENOMEM;
	} else {
		ssusb->num_phys = 0;
	}

	for (i = 0; i < ssusb->num_phys; i++) {
		ssusb->phys[i] = FUNC8(dev, node, i);
		if (FUNC0(ssusb->phys[i])) {
			FUNC2(dev, "failed to get phy-%d\n", i);
			return FUNC1(ssusb->phys[i]);
		}
	}

	res = FUNC14(pdev, IORESOURCE_MEM, "ippc");
	ssusb->ippc_base = FUNC6(dev, res);
	if (FUNC0(ssusb->ippc_base))
		return FUNC1(ssusb->ippc_base);

	ssusb->dr_mode = FUNC16(dev);
	if (ssusb->dr_mode == USB_DR_MODE_UNKNOWN)
		ssusb->dr_mode = USB_DR_MODE_OTG;

	if (ssusb->dr_mode == USB_DR_MODE_PERIPHERAL)
		goto out;

	/* if host role is supported */
	ret = FUNC15(ssusb, node);
	if (ret) {
		FUNC2(dev, "failed to parse uwk property\n");
		return ret;
	}

	/* optional property, ignore the error if it does not exist */
	FUNC13(node, "mediatek,u3p-dis-msk",
			     &ssusb->u3p_dis_msk);

	otg_sx->vbus = FUNC9(dev, "vbus");
	if (FUNC0(otg_sx->vbus)) {
		FUNC2(dev, "failed to get vbus\n");
		return FUNC1(otg_sx->vbus);
	}

	if (ssusb->dr_mode == USB_DR_MODE_HOST)
		goto out;

	/* if dual-role mode is supported */
	otg_sx->is_u3_drd = FUNC12(node, "mediatek,usb3-drd");
	otg_sx->manual_drd_enabled =
		FUNC12(node, "enable-manual-drd");
	otg_sx->role_sw_used = FUNC12(node, "usb-role-switch");

	if (!otg_sx->role_sw_used && FUNC12(node, "extcon")) {
		otg_sx->edev = FUNC10(ssusb->dev, 0);
		if (FUNC0(otg_sx->edev)) {
			FUNC2(ssusb->dev, "couldn't get extcon device\n");
			return FUNC1(otg_sx->edev);
		}
	}

out:
	FUNC3(dev, "dr_mode: %d, is_u3_dr: %d, u3p_dis_msk: %x, drd: %s\n",
		ssusb->dr_mode, otg_sx->is_u3_drd, ssusb->u3p_dis_msk,
		otg_sx->manual_drd_enabled ? "manual" : "auto");

	return 0;
}