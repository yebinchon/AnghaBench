#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_4__* otg; } ;
struct tahvo_usb {TYPE_3__ phy; TYPE_2__* pt_dev; } ;
struct retu_dev {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  state; scalar_t__ gadget; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct TYPE_6__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  OTG_STATE_UNDEFINED ; 
 int /*<<< orphan*/  TAHVO_REG_USBR ; 
 struct retu_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct retu_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct tahvo_usb *tu)
{
	struct retu_dev *rdev = FUNC0(tu->pt_dev->dev.parent);

	/* Disable gadget controller if any */
	if (tu->phy.otg->gadget)
		FUNC2(tu->phy.otg->gadget);

	/* Power off transceiver */
	FUNC1(rdev, TAHVO_REG_USBR, 0);
	tu->phy.otg->state = OTG_STATE_UNDEFINED;
}