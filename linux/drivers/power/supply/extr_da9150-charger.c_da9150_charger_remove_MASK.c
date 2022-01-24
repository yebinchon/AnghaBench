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
struct platform_device {int dummy; } ;
struct da9150_charger {int /*<<< orphan*/  vbat_chan; int /*<<< orphan*/  tjunc_chan; int /*<<< orphan*/  vbus_chan; int /*<<< orphan*/  ibus_chan; int /*<<< orphan*/  usb; int /*<<< orphan*/  battery; int /*<<< orphan*/  otg_nb; int /*<<< orphan*/  usb_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,struct da9150_charger*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct da9150_charger* FUNC3 (struct platform_device*) ; 
 int FUNC4 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct da9150_charger *charger = FUNC3(pdev);
	int irq;

	/* Make sure IRQs are released before unregistering power supplies */
	irq = FUNC4(pdev, "CHG_VBUS");
	FUNC1(irq, charger);

	irq = FUNC4(pdev, "CHG_VFAULT");
	FUNC1(irq, charger);

	irq = FUNC4(pdev, "CHG_TJUNC");
	FUNC1(irq, charger);

	irq = FUNC4(pdev, "CHG_STATUS");
	FUNC1(irq, charger);

	if (!FUNC0(charger->usb_phy))
		FUNC6(charger->usb_phy, &charger->otg_nb);

	FUNC5(charger->battery);
	FUNC5(charger->usb);

	/* Release ADC channels */
	FUNC2(charger->ibus_chan);
	FUNC2(charger->vbus_chan);
	FUNC2(charger->tjunc_chan);
	FUNC2(charger->vbat_chan);

	return 0;
}