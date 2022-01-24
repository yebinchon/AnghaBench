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
struct usb_hcd {int /*<<< orphan*/  regs; } ;
struct isp1760_hcd {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ClearPortFeature ; 
 int /*<<< orphan*/  HC_CONFIGFLAG ; 
 int /*<<< orphan*/  HC_HW_MODE_CTRL ; 
 int /*<<< orphan*/  HW_GLOBAL_INTR_EN ; 
 int /*<<< orphan*/  USB_PORT_FEAT_POWER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  errata2_timer ; 
 struct isp1760_hcd* FUNC2 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_hcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct usb_hcd *hcd)
{
	struct isp1760_hcd *priv = FUNC2(hcd);
	u32 temp;

	FUNC0(&errata2_timer);

	FUNC3(hcd, ClearPortFeature, USB_PORT_FEAT_POWER,	1,
			NULL, 0);
	FUNC4(20);

	FUNC7(&priv->lock);
	FUNC1(hcd);
	/* Disable IRQ */
	temp = FUNC5(hcd->regs, HC_HW_MODE_CTRL);
	FUNC6(hcd->regs, HC_HW_MODE_CTRL, temp &= ~HW_GLOBAL_INTR_EN);
	FUNC8(&priv->lock);

	FUNC6(hcd->regs, HC_CONFIGFLAG, 0);
}