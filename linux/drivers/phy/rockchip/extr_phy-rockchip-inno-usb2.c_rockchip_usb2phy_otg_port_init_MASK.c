#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  notifier_call; } ;
struct rockchip_usb2phy_port {size_t port_id; int suspended; int vbus_attached; scalar_t__ mode; scalar_t__ otg_mux_irq; int bvalid_irq; TYPE_2__ event_nb; int /*<<< orphan*/  otg_sm_work; int /*<<< orphan*/  chg_work; int /*<<< orphan*/  mutex; int /*<<< orphan*/  state; int /*<<< orphan*/ * port_cfg; } ;
struct rockchip_usb2phy {int /*<<< orphan*/  dev; int /*<<< orphan*/  edev; TYPE_1__* phy_cfg; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * port_cfgs; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXTCON_USB_HOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OTG_STATE_UNDEFINED ; 
 size_t USB2PHY_PORT_OTG ; 
 scalar_t__ USB_DR_MODE_HOST ; 
 scalar_t__ USB_DR_MODE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct rockchip_usb2phy_port*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (struct device_node*,char*) ; 
 scalar_t__ FUNC7 (struct device_node*,int) ; 
 int /*<<< orphan*/  rockchip_chg_detect_work ; 
 int /*<<< orphan*/  rockchip_otg_event ; 
 int /*<<< orphan*/  rockchip_usb2phy_bvalid_irq ; 
 int /*<<< orphan*/  rockchip_usb2phy_otg_mux_irq ; 
 int /*<<< orphan*/  rockchip_usb2phy_otg_sm_work ; 

__attribute__((used)) static int FUNC8(struct rockchip_usb2phy *rphy,
					  struct rockchip_usb2phy_port *rport,
					  struct device_node *child_np)
{
	int ret;

	rport->port_id = USB2PHY_PORT_OTG;
	rport->port_cfg = &rphy->phy_cfg->port_cfgs[USB2PHY_PORT_OTG];
	rport->state = OTG_STATE_UNDEFINED;

	/*
	 * set suspended flag to true, but actually don't
	 * put phy in suspend mode, it aims to enable usb
	 * phy and clock in power_on() called by usb controller
	 * driver during probe.
	 */
	rport->suspended = true;
	rport->vbus_attached = false;

	FUNC5(&rport->mutex);

	rport->mode = FUNC7(child_np, -1);
	if (rport->mode == USB_DR_MODE_HOST ||
	    rport->mode == USB_DR_MODE_UNKNOWN) {
		ret = 0;
		goto out;
	}

	FUNC0(&rport->chg_work, rockchip_chg_detect_work);
	FUNC0(&rport->otg_sm_work, rockchip_usb2phy_otg_sm_work);

	/*
	 * Some SoCs use one interrupt with otg-id/otg-bvalid/linestate
	 * interrupts muxed together, so probe the otg-mux interrupt first,
	 * if not found, then look for the regular interrupts one by one.
	 */
	rport->otg_mux_irq = FUNC6(child_np, "otg-mux");
	if (rport->otg_mux_irq > 0) {
		ret = FUNC4(rphy->dev, rport->otg_mux_irq,
						NULL,
						rockchip_usb2phy_otg_mux_irq,
						IRQF_ONESHOT,
						"rockchip_usb2phy_otg",
						rport);
		if (ret) {
			FUNC2(rphy->dev,
				"failed to request otg-mux irq handle\n");
			goto out;
		}
	} else {
		rport->bvalid_irq = FUNC6(child_np, "otg-bvalid");
		if (rport->bvalid_irq < 0) {
			FUNC2(rphy->dev, "no vbus valid irq provided\n");
			ret = rport->bvalid_irq;
			goto out;
		}

		ret = FUNC4(rphy->dev, rport->bvalid_irq,
						NULL,
						rockchip_usb2phy_bvalid_irq,
						IRQF_ONESHOT,
						"rockchip_usb2phy_bvalid",
						rport);
		if (ret) {
			FUNC2(rphy->dev,
				"failed to request otg-bvalid irq handle\n");
			goto out;
		}
	}

	if (!FUNC1(rphy->edev)) {
		rport->event_nb.notifier_call = rockchip_otg_event;

		ret = FUNC3(rphy->dev, rphy->edev,
					EXTCON_USB_HOST, &rport->event_nb);
		if (ret)
			FUNC2(rphy->dev, "register USB HOST notifier failed\n");
	}

out:
	return ret;
}