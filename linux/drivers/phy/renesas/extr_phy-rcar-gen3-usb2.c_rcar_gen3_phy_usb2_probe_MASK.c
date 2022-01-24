#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct rcar_gen3_chan {scalar_t__ dr_mode; int is_otg_channel; int uses_otg_pins; struct device* dev; struct phy_provider* vbus; TYPE_1__* rphys; int /*<<< orphan*/  lock; struct phy_provider* extcon; int /*<<< orphan*/  work; struct phy_provider* base; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
struct phy_ops {int dummy; } ;
struct TYPE_2__ {struct phy_provider* phy; int /*<<< orphan*/  int_enable_bits; struct rcar_gen3_chan* ch; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC1 (struct phy_provider*) ; 
 int NUM_OF_PHYS ; 
 int FUNC2 (struct phy_provider*) ; 
 scalar_t__ USB_DR_MODE_UNKNOWN ; 
 int /*<<< orphan*/  dev_attr_role ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ *) ; 
 struct phy_provider* FUNC6 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*,struct phy_provider*) ; 
 struct phy_provider* FUNC8 (struct device*,struct resource*) ; 
 struct rcar_gen3_chan* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC10 (struct device*,int /*<<< orphan*/ ) ; 
 struct phy_provider* FUNC11 (struct device*,int /*<<< orphan*/ *,struct phy_ops const*) ; 
 struct phy_provider* FUNC12 (struct device*,char*) ; 
 int FUNC13 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rcar_gen3_chan*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 struct phy_ops* FUNC15 (struct device*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct phy_provider*,TYPE_1__*) ; 
 int FUNC18 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC19 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct platform_device*,struct rcar_gen3_chan*) ; 
 int /*<<< orphan*/  FUNC21 (struct device*) ; 
 int /*<<< orphan*/  FUNC22 (struct device*) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * rcar_gen3_int_enable ; 
 int /*<<< orphan*/  rcar_gen3_phy_cable ; 
 int /*<<< orphan*/  rcar_gen3_phy_usb2_irq ; 
 int /*<<< orphan*/  rcar_gen3_phy_usb2_work ; 
 int /*<<< orphan*/  rcar_gen3_phy_usb2_xlate ; 

__attribute__((used)) static int FUNC24(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct rcar_gen3_chan *channel;
	struct phy_provider *provider;
	struct resource *res;
	const struct phy_ops *phy_usb2_ops;
	int irq, ret = 0, i;

	if (!dev->of_node) {
		FUNC3(dev, "This driver needs device tree\n");
		return -EINVAL;
	}

	channel = FUNC9(dev, sizeof(*channel), GFP_KERNEL);
	if (!channel)
		return -ENOMEM;

	res = FUNC19(pdev, IORESOURCE_MEM, 0);
	channel->base = FUNC8(dev, res);
	if (FUNC1(channel->base))
		return FUNC2(channel->base);

	/* call request_irq for OTG */
	irq = FUNC18(pdev, 0);
	if (irq >= 0) {
		FUNC0(&channel->work, rcar_gen3_phy_usb2_work);
		irq = FUNC13(dev, irq, rcar_gen3_phy_usb2_irq,
				       IRQF_SHARED, FUNC4(dev), channel);
		if (irq < 0)
			FUNC3(dev, "No irq handler (%d)\n", irq);
	}

	channel->dr_mode = FUNC23(dev->of_node);
	if (channel->dr_mode != USB_DR_MODE_UNKNOWN) {
		int ret;

		channel->is_otg_channel = true;
		channel->uses_otg_pins = !FUNC16(dev->of_node,
							"renesas,no-otg-pins");
		channel->extcon = FUNC6(dev,
							rcar_gen3_phy_cable);
		if (FUNC1(channel->extcon))
			return FUNC2(channel->extcon);

		ret = FUNC7(dev, channel->extcon);
		if (ret < 0) {
			FUNC3(dev, "Failed to register extcon\n");
			return ret;
		}
	}

	/*
	 * devm_phy_create() will call pm_runtime_enable(&phy->dev);
	 * And then, phy-core will manage runtime pm for this device.
	 */
	FUNC22(dev);
	phy_usb2_ops = FUNC15(dev);
	if (!phy_usb2_ops)
		return -EINVAL;

	FUNC14(&channel->lock);
	for (i = 0; i < NUM_OF_PHYS; i++) {
		channel->rphys[i].phy = FUNC11(dev, NULL,
							phy_usb2_ops);
		if (FUNC1(channel->rphys[i].phy)) {
			FUNC3(dev, "Failed to create USB2 PHY\n");
			ret = FUNC2(channel->rphys[i].phy);
			goto error;
		}
		channel->rphys[i].ch = channel;
		channel->rphys[i].int_enable_bits = rcar_gen3_int_enable[i];
		FUNC17(channel->rphys[i].phy, &channel->rphys[i]);
	}

	channel->vbus = FUNC12(dev, "vbus");
	if (FUNC1(channel->vbus)) {
		if (FUNC2(channel->vbus) == -EPROBE_DEFER) {
			ret = FUNC2(channel->vbus);
			goto error;
		}
		channel->vbus = NULL;
	}

	FUNC20(pdev, channel);
	channel->dev = dev;

	provider = FUNC10(dev, rcar_gen3_phy_usb2_xlate);
	if (FUNC1(provider)) {
		FUNC3(dev, "Failed to register PHY provider\n");
		ret = FUNC2(provider);
		goto error;
	} else if (channel->is_otg_channel) {
		int ret;

		ret = FUNC5(dev, &dev_attr_role);
		if (ret < 0)
			goto error;
	}

	return 0;

error:
	FUNC21(dev);

	return ret;
}