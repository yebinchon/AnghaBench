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
struct otg_switch_mtk {scalar_t__ manual_drd_enabled; } ;
struct ssusb_mtk {struct otg_switch_mtk otg_switch; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTU3_DR_FORCE_HOST ; 
 int /*<<< orphan*/  FUNC0 (struct ssusb_mtk*) ; 
 int /*<<< orphan*/  FUNC1 (struct ssusb_mtk*) ; 
 int /*<<< orphan*/  FUNC2 (struct ssusb_mtk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct otg_switch_mtk*,int) ; 

__attribute__((used)) static void FUNC4(struct ssusb_mtk *ssusb)
{
	struct otg_switch_mtk *otg_sx = &ssusb->otg_switch;

	FUNC0(ssusb);

	/*
	 * power on host and power on/enable all ports
	 * if support OTG, gadget driver will switch port0 to device mode
	 */
	FUNC1(ssusb);

	if (otg_sx->manual_drd_enabled)
		FUNC2(ssusb, MTU3_DR_FORCE_HOST);

	/* if port0 supports dual-role, works as host mode by default */
	FUNC3(&ssusb->otg_switch, 1);
}