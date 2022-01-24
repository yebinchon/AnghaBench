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
struct rockchip_usb2phy_port {TYPE_3__* port_cfg; TYPE_2__* phy; } ;
struct rockchip_usb2phy {int /*<<< orphan*/  grf; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_6__ {int /*<<< orphan*/  bvalid_det_st; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_NONE ; 
 struct rockchip_usb2phy* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,void*) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *data)
{
	struct rockchip_usb2phy_port *rport = data;
	struct rockchip_usb2phy *rphy = FUNC0(rport->phy->dev.parent);

	if (FUNC1(rphy->grf, &rport->port_cfg->bvalid_det_st))
		return FUNC2(irq, data);
	else
		return IRQ_NONE;
}