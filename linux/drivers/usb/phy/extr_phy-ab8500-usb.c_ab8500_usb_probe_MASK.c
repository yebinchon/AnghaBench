#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct usb_otg {int /*<<< orphan*/  set_peripheral; int /*<<< orphan*/  set_host; TYPE_1__* usb_phy; int /*<<< orphan*/  state; } ;
struct TYPE_8__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_7__ {char* label; struct usb_otg* otg; int /*<<< orphan*/  set_suspend; TYPE_2__* dev; } ;
struct ab8500_usb {int flags; struct ab8500* ab8500; TYPE_1__ phy; int /*<<< orphan*/  sysclk; TYPE_2__* dev; int /*<<< orphan*/  phy_dis_work; } ;
struct ab8500 {int dummy; } ;

/* Variables and functions */
 int AB8500_USB_FLAG_REGULATOR_SET_VOLTAGE ; 
 int AB8500_USB_FLAG_USE_ID_WAKEUP_IRQ ; 
 int AB8500_USB_FLAG_USE_LINK_STATUS_IRQ ; 
 int AB8500_USB_FLAG_USE_VBUS_DET_IRQ ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OTG_STATE_UNDEFINED ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_PHY_TYPE_USB2 ; 
 int FUNC3 (struct platform_device*,struct ab8500_usb*) ; 
 int /*<<< orphan*/  ab8500_usb_phy_disable_work ; 
 int FUNC4 (struct ab8500_usb*) ; 
 int /*<<< orphan*/  FUNC5 (struct ab8500_usb*) ; 
 int /*<<< orphan*/  FUNC6 (struct ab8500_usb*) ; 
 int /*<<< orphan*/  FUNC7 (struct ab8500_usb*) ; 
 int /*<<< orphan*/  ab8500_usb_set_host ; 
 int /*<<< orphan*/  ab8500_usb_set_peripheral ; 
 int /*<<< orphan*/  ab8500_usb_set_suspend ; 
 int /*<<< orphan*/  FUNC8 (struct ab8500_usb*) ; 
 int FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (struct ab8500_usb*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,char*,...) ; 
 struct ab8500* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,char*) ; 
 void* FUNC15 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct ab8500*) ; 
 scalar_t__ FUNC17 (struct ab8500*) ; 
 scalar_t__ FUNC18 (struct ab8500*) ; 
 scalar_t__ FUNC19 (struct ab8500*) ; 
 int /*<<< orphan*/  FUNC20 (struct platform_device*,struct ab8500_usb*) ; 
 int FUNC21 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC22(struct platform_device *pdev)
{
	struct ab8500_usb	*ab;
	struct ab8500		*ab8500;
	struct usb_otg		*otg;
	int err;
	int rev;

	ab8500 = FUNC12(pdev->dev.parent);
	rev = FUNC9(&pdev->dev);

	if (FUNC17(ab8500)) {
		FUNC11(&pdev->dev, "Unsupported AB8500 chip rev=%d\n", rev);
		return -ENODEV;
	}

	ab = FUNC15(&pdev->dev, sizeof(*ab), GFP_KERNEL);
	if (!ab)
		return -ENOMEM;

	otg = FUNC15(&pdev->dev, sizeof(*otg), GFP_KERNEL);
	if (!otg)
		return -ENOMEM;

	ab->dev			= &pdev->dev;
	ab->ab8500		= ab8500;
	ab->phy.dev		= ab->dev;
	ab->phy.otg		= otg;
	ab->phy.label		= "ab8500";
	ab->phy.set_suspend	= ab8500_usb_set_suspend;
	ab->phy.otg->state	= OTG_STATE_UNDEFINED;

	otg->usb_phy		= &ab->phy;
	otg->set_host		= ab8500_usb_set_host;
	otg->set_peripheral	= ab8500_usb_set_peripheral;

	if (FUNC16(ab->ab8500)) {
		ab->flags |= AB8500_USB_FLAG_USE_LINK_STATUS_IRQ |
			AB8500_USB_FLAG_USE_ID_WAKEUP_IRQ |
			AB8500_USB_FLAG_USE_VBUS_DET_IRQ |
			AB8500_USB_FLAG_REGULATOR_SET_VOLTAGE;
	} else if (FUNC19(ab->ab8500)) {
		ab->flags |= AB8500_USB_FLAG_USE_LINK_STATUS_IRQ |
			AB8500_USB_FLAG_USE_ID_WAKEUP_IRQ |
			AB8500_USB_FLAG_USE_VBUS_DET_IRQ |
			AB8500_USB_FLAG_REGULATOR_SET_VOLTAGE;
	}

	/* Disable regulator voltage setting for AB8500 <= v2.0 */
	if (FUNC18(ab->ab8500))
		ab->flags &= ~AB8500_USB_FLAG_REGULATOR_SET_VOLTAGE;

	FUNC20(pdev, ab);

	/* all: Disable phy when called from set_host and set_peripheral */
	FUNC0(&ab->phy_dis_work, ab8500_usb_phy_disable_work);

	err = FUNC4(ab);
	if (err)
		return err;

	ab->sysclk = FUNC14(ab->dev, "sysclk");
	if (FUNC1(ab->sysclk)) {
		FUNC11(ab->dev, "Could not get sysclk.\n");
		return FUNC2(ab->sysclk);
	}

	err = FUNC3(pdev, ab);
	if (err < 0)
		return err;

	err = FUNC21(&ab->phy, USB_PHY_TYPE_USB2);
	if (err) {
		FUNC11(&pdev->dev, "Can't register transceiver\n");
		return err;
	}

	if (FUNC16(ab->ab8500) && !FUNC18(ab->ab8500))
		/* Phy tuning values for AB8500 > v2.0 */
		FUNC6(ab);
	else if (FUNC19(ab->ab8500))
		/* Phy tuning values for AB8505 */
		FUNC7(ab);

	/* Needed to enable ID detection. */
	FUNC8(ab);

	/*
	 * This is required for usb-link-status to work properly when a
	 * cable is connected at boot time.
	 */
	FUNC5(ab);

	FUNC10(ab);

	FUNC13(&pdev->dev, "revision 0x%2x driver initialized\n", rev);

	return 0;
}