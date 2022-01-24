#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rockchip_usb2phy_port {scalar_t__ port_id; scalar_t__ mode; int /*<<< orphan*/  mutex; int /*<<< orphan*/  sm_work; TYPE_3__* port_cfg; TYPE_2__* phy; int /*<<< orphan*/  otg_sm_work; } ;
struct rockchip_usb2phy {int /*<<< orphan*/  grf; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct phy {TYPE_1__ dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  ls_det_en; int /*<<< orphan*/  ls_det_clr; int /*<<< orphan*/  bvalid_det_en; int /*<<< orphan*/  bvalid_det_clr; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int OTG_SCHEDULE_DELAY ; 
 int SCHEDULE_DELAY ; 
 scalar_t__ USB2PHY_PORT_HOST ; 
 scalar_t__ USB2PHY_PORT_OTG ; 
 scalar_t__ USB_DR_MODE_HOST ; 
 scalar_t__ USB_DR_MODE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 struct rockchip_usb2phy* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct rockchip_usb2phy_port* FUNC4 (struct phy*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(struct phy *phy)
{
	struct rockchip_usb2phy_port *rport = FUNC4(phy);
	struct rockchip_usb2phy *rphy = FUNC1(phy->dev.parent);
	int ret = 0;

	FUNC2(&rport->mutex);

	if (rport->port_id == USB2PHY_PORT_OTG) {
		if (rport->mode != USB_DR_MODE_HOST &&
		    rport->mode != USB_DR_MODE_UNKNOWN) {
			/* clear bvalid status and enable bvalid detect irq */
			ret = FUNC5(rphy->grf,
					      &rport->port_cfg->bvalid_det_clr,
					      true);
			if (ret)
				goto out;

			ret = FUNC5(rphy->grf,
					      &rport->port_cfg->bvalid_det_en,
					      true);
			if (ret)
				goto out;

			FUNC6(&rport->otg_sm_work,
					      OTG_SCHEDULE_DELAY * 3);
		} else {
			/* If OTG works in host only mode, do nothing. */
			FUNC0(&rport->phy->dev, "mode %d\n", rport->mode);
		}
	} else if (rport->port_id == USB2PHY_PORT_HOST) {
		/* clear linestate and enable linestate detect irq */
		ret = FUNC5(rphy->grf,
				      &rport->port_cfg->ls_det_clr, true);
		if (ret)
			goto out;

		ret = FUNC5(rphy->grf,
				      &rport->port_cfg->ls_det_en, true);
		if (ret)
			goto out;

		FUNC6(&rport->sm_work, SCHEDULE_DELAY);
	}

out:
	FUNC3(&rport->mutex);
	return ret;
}