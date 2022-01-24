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
typedef  int u8 ;
struct device {int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  notifier_call; } ;
struct da9150_charger {int /*<<< orphan*/ * ibus_chan; int /*<<< orphan*/ * vbus_chan; int /*<<< orphan*/ * tjunc_chan; int /*<<< orphan*/ * vbat_chan; int /*<<< orphan*/ * usb; TYPE_1__ otg_nb; int /*<<< orphan*/  usb_phy; int /*<<< orphan*/  otg_work; int /*<<< orphan*/ * supply_online; int /*<<< orphan*/ * battery; struct device* dev; struct da9150* da9150; } ;
struct da9150 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA9150_STATUS_H ; 
#define  DA9150_VBUS_STAT_CHG 130 
 int DA9150_VBUS_STAT_MASK ; 
#define  DA9150_VBUS_STAT_OFF 129 
#define  DA9150_VBUS_STAT_WAIT 128 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  USB_PHY_TYPE_USB2 ; 
 int /*<<< orphan*/  battery_desc ; 
 int /*<<< orphan*/  da9150_charger_chg_irq ; 
 int /*<<< orphan*/  da9150_charger_otg_ncb ; 
 int /*<<< orphan*/  da9150_charger_otg_work ; 
 int FUNC4 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  da9150_charger_tjunc_irq ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  da9150_charger_vbus_irq ; 
 int /*<<< orphan*/  da9150_charger_vfault_irq ; 
 int FUNC6 (struct da9150*,int /*<<< orphan*/ ) ; 
 struct da9150* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,int) ; 
 struct da9150_charger* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,int /*<<< orphan*/ ) ; 
 void* FUNC11 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct da9150_charger*) ; 
 void* FUNC14 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usb_desc ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct da9150 *da9150 = FUNC7(dev->parent);
	struct da9150_charger *charger;
	u8 reg;
	int ret;

	charger = FUNC9(dev, sizeof(struct da9150_charger), GFP_KERNEL);
	if (!charger)
		return -ENOMEM;

	FUNC13(pdev, charger);
	charger->da9150 = da9150;
	charger->dev = dev;

	/* Acquire ADC channels */
	charger->ibus_chan = FUNC11(dev, "CHAN_IBUS");
	if (FUNC1(charger->ibus_chan)) {
		ret = FUNC3(charger->ibus_chan);
		goto ibus_chan_fail;
	}

	charger->vbus_chan = FUNC11(dev, "CHAN_VBUS");
	if (FUNC1(charger->vbus_chan)) {
		ret = FUNC3(charger->vbus_chan);
		goto vbus_chan_fail;
	}

	charger->tjunc_chan = FUNC11(dev, "CHAN_TJUNC");
	if (FUNC1(charger->tjunc_chan)) {
		ret = FUNC3(charger->tjunc_chan);
		goto tjunc_chan_fail;
	}

	charger->vbat_chan = FUNC11(dev, "CHAN_VBAT");
	if (FUNC1(charger->vbat_chan)) {
		ret = FUNC3(charger->vbat_chan);
		goto vbat_chan_fail;
	}

	/* Register power supplies */
	charger->usb = FUNC14(dev, &usb_desc, NULL);
	if (FUNC1(charger->usb)) {
		ret = FUNC3(charger->usb);
		goto usb_fail;
	}

	charger->battery = FUNC14(dev, &battery_desc, NULL);
	if (FUNC1(charger->battery)) {
		ret = FUNC3(charger->battery);
		goto battery_fail;
	}

	/* Get initial online supply */
	reg = FUNC6(da9150, DA9150_STATUS_H);

	switch (reg & DA9150_VBUS_STAT_MASK) {
	case DA9150_VBUS_STAT_OFF:
	case DA9150_VBUS_STAT_WAIT:
		charger->supply_online = charger->battery;
		break;
	case DA9150_VBUS_STAT_CHG:
		charger->supply_online = charger->usb;
		break;
	default:
		FUNC8(dev, "Unknown VBUS state - reg = 0x%x\n", reg);
		charger->supply_online = NULL;
		break;
	}

	/* Setup OTG reporting & configuration */
	charger->usb_phy = FUNC10(dev, USB_PHY_TYPE_USB2);
	if (!FUNC2(charger->usb_phy)) {
		FUNC0(&charger->otg_work, da9150_charger_otg_work);
		charger->otg_nb.notifier_call = da9150_charger_otg_ncb;
		FUNC16(charger->usb_phy, &charger->otg_nb);
	}

	/* Register IRQs */
	ret = FUNC4(pdev, da9150_charger_chg_irq,
					  "CHG_STATUS");
	if (ret < 0)
		goto chg_irq_fail;

	ret = FUNC4(pdev, da9150_charger_tjunc_irq,
					  "CHG_TJUNC");
	if (ret < 0)
		goto tjunc_irq_fail;

	ret = FUNC4(pdev, da9150_charger_vfault_irq,
					  "CHG_VFAULT");
	if (ret < 0)
		goto vfault_irq_fail;

	ret = FUNC4(pdev, da9150_charger_vbus_irq,
					  "CHG_VBUS");
	if (ret < 0)
		goto vbus_irq_fail;

	return 0;


vbus_irq_fail:
	FUNC5(pdev, "CHG_VFAULT");
vfault_irq_fail:
	FUNC5(pdev, "CHG_TJUNC");
tjunc_irq_fail:
	FUNC5(pdev, "CHG_STATUS");
chg_irq_fail:
	if (!FUNC2(charger->usb_phy))
		FUNC17(charger->usb_phy, &charger->otg_nb);
battery_fail:
	FUNC15(charger->usb);

usb_fail:
	FUNC12(charger->vbat_chan);

vbat_chan_fail:
	FUNC12(charger->tjunc_chan);

tjunc_chan_fail:
	FUNC12(charger->vbus_chan);

vbus_chan_fail:
	FUNC12(charger->ibus_chan);

ibus_chan_fail:
	return ret;
}