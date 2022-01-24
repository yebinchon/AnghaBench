#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct usb_otg {TYPE_2__* host; } ;
struct TYPE_9__ {int otg_port; } ;
struct usb_hcd {int has_tt; int skip_phy_initialization; TYPE_2__ self; scalar_t__ usb_phy; int /*<<< orphan*/  tpl_support; int /*<<< orphan*/  power_budget; int /*<<< orphan*/  regs; int /*<<< orphan*/  rsrc_len; int /*<<< orphan*/  rsrc_start; } ;
struct ehci_hcd {scalar_t__ priv; int /*<<< orphan*/  imx28_write_fix; int /*<<< orphan*/  has_tdi_phy_lpm; int /*<<< orphan*/  has_hostpc; int /*<<< orphan*/  caps; } ;
struct ehci_ci_priv {int /*<<< orphan*/ * reg_vbus; } ;
struct TYPE_8__ {int /*<<< orphan*/  lpm; int /*<<< orphan*/  cap; int /*<<< orphan*/  abs; int /*<<< orphan*/  size; int /*<<< orphan*/  phys; } ;
struct ci_hdrc {TYPE_3__* platdata; struct usb_hcd* hcd; struct usb_otg otg; TYPE_4__* dev; int /*<<< orphan*/  imx28_write_fix; TYPE_1__ hw_bank; scalar_t__ usb_phy; scalar_t__ phy; } ;
struct TYPE_11__ {int /*<<< orphan*/  parent; } ;
struct TYPE_10__ {int flags; int /*<<< orphan*/ * reg_vbus; int /*<<< orphan*/  (* notify_event ) (struct ci_hdrc*,int /*<<< orphan*/ ) ;scalar_t__ pins_host; int /*<<< orphan*/  pctl; int /*<<< orphan*/  tpl_support; int /*<<< orphan*/  power_budget; } ;

/* Variables and functions */
 int /*<<< orphan*/  CI_HDRC_IMX_HSIC_ACTIVE_EVENT ; 
 int CI_HDRC_IMX_IS_HSIC ; 
 int CI_HDRC_TURN_VBUS_EARLY_ON ; 
 int ENODEV ; 
 int ENOMEM ; 
 struct usb_hcd* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ci_ehci_hc_driver ; 
 scalar_t__ FUNC1 (struct ci_hdrc*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,struct ci_hdrc*) ; 
 struct ehci_hcd* FUNC5 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ci_hdrc*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct usb_hcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC13(struct ci_hdrc *ci)
{
	struct usb_hcd *hcd;
	struct ehci_hcd *ehci;
	struct ehci_ci_priv *priv;
	int ret;

	if (FUNC11())
		return -ENODEV;

	hcd = FUNC0(&ci_ehci_hc_driver, ci->dev->parent,
			       ci->dev, FUNC3(ci->dev), NULL);
	if (!hcd)
		return -ENOMEM;

	FUNC4(ci->dev, ci);
	hcd->rsrc_start = ci->hw_bank.phys;
	hcd->rsrc_len = ci->hw_bank.size;
	hcd->regs = ci->hw_bank.abs;
	hcd->has_tt = 1;

	hcd->power_budget = ci->platdata->power_budget;
	hcd->tpl_support = ci->platdata->tpl_support;
	if (ci->phy || ci->usb_phy) {
		hcd->skip_phy_initialization = 1;
		if (ci->usb_phy)
			hcd->usb_phy = ci->usb_phy;
	}

	ehci = FUNC5(hcd);
	ehci->caps = ci->hw_bank.cap;
	ehci->has_hostpc = ci->hw_bank.lpm;
	ehci->has_tdi_phy_lpm = ci->hw_bank.lpm;
	ehci->imx28_write_fix = ci->imx28_write_fix;

	priv = (struct ehci_ci_priv *)ehci->priv;
	priv->reg_vbus = NULL;

	if (ci->platdata->reg_vbus && !FUNC1(ci)) {
		if (ci->platdata->flags & CI_HDRC_TURN_VBUS_EARLY_ON) {
			ret = FUNC8(ci->platdata->reg_vbus);
			if (ret) {
				FUNC2(ci->dev,
				"Failed to enable vbus regulator, ret=%d\n",
									ret);
				goto put_hcd;
			}
		} else {
			priv->reg_vbus = ci->platdata->reg_vbus;
		}
	}

	if (ci->platdata->pins_host)
		FUNC6(ci->platdata->pctl,
				     ci->platdata->pins_host);

	ret = FUNC10(hcd, 0, 0);
	if (ret) {
		goto disable_reg;
	} else {
		struct usb_otg *otg = &ci->otg;

		ci->hcd = hcd;

		if (FUNC1(ci)) {
			otg->host = &hcd->self;
			hcd->self.otg_port = 1;
		}

		if (ci->platdata->notify_event &&
			(ci->platdata->flags & CI_HDRC_IMX_IS_HSIC))
			ci->platdata->notify_event
				(ci, CI_HDRC_IMX_HSIC_ACTIVE_EVENT);
	}

	return ret;

disable_reg:
	if (ci->platdata->reg_vbus && !FUNC1(ci) &&
			(ci->platdata->flags & CI_HDRC_TURN_VBUS_EARLY_ON))
		FUNC7(ci->platdata->reg_vbus);
put_hcd:
	FUNC12(hcd);

	return ret;
}