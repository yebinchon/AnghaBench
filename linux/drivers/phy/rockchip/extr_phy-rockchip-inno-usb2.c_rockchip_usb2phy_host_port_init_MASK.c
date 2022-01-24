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
struct rockchip_usb2phy_port {size_t port_id; int suspended; scalar_t__ ls_irq; int /*<<< orphan*/  sm_work; int /*<<< orphan*/  mutex; int /*<<< orphan*/ * port_cfg; } ;
struct rockchip_usb2phy {int /*<<< orphan*/  dev; TYPE_1__* phy_cfg; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * port_cfgs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 size_t USB2PHY_PORT_HOST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct rockchip_usb2phy_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct device_node*,char*) ; 
 int /*<<< orphan*/  rockchip_usb2phy_linestate_irq ; 
 int /*<<< orphan*/  rockchip_usb2phy_sm_work ; 

__attribute__((used)) static int FUNC5(struct rockchip_usb2phy *rphy,
					   struct rockchip_usb2phy_port *rport,
					   struct device_node *child_np)
{
	int ret;

	rport->port_id = USB2PHY_PORT_HOST;
	rport->port_cfg = &rphy->phy_cfg->port_cfgs[USB2PHY_PORT_HOST];
	rport->suspended = true;

	FUNC3(&rport->mutex);
	FUNC0(&rport->sm_work, rockchip_usb2phy_sm_work);

	rport->ls_irq = FUNC4(child_np, "linestate");
	if (rport->ls_irq < 0) {
		FUNC1(rphy->dev, "no linestate irq provided\n");
		return rport->ls_irq;
	}

	ret = FUNC2(rphy->dev, rport->ls_irq, NULL,
					rockchip_usb2phy_linestate_irq,
					IRQF_ONESHOT,
					"rockchip_usb2phy", rport);
	if (ret) {
		FUNC1(rphy->dev, "failed to request linestate irq handle\n");
		return ret;
	}

	return 0;
}