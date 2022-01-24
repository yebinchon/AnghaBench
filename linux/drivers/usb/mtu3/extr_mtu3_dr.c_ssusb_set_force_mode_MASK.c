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
typedef  int u32 ;
struct ssusb_mtk {int /*<<< orphan*/  ippc_base; } ;
typedef  enum mtu3_dr_force_mode { ____Placeholder_mtu3_dr_force_mode } mtu3_dr_force_mode ;

/* Variables and functions */
#define  MTU3_DR_FORCE_DEVICE 130 
#define  MTU3_DR_FORCE_HOST 129 
#define  MTU3_DR_FORCE_NONE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SSUSB_U2_PORT_FORCE_IDDIG ; 
 int SSUSB_U2_PORT_RG_IDDIG ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct ssusb_mtk *ssusb,
			  enum mtu3_dr_force_mode mode)
{
	u32 value;

	value = FUNC1(ssusb->ippc_base, FUNC0(0));
	switch (mode) {
	case MTU3_DR_FORCE_DEVICE:
		value |= SSUSB_U2_PORT_FORCE_IDDIG | SSUSB_U2_PORT_RG_IDDIG;
		break;
	case MTU3_DR_FORCE_HOST:
		value |= SSUSB_U2_PORT_FORCE_IDDIG;
		value &= ~SSUSB_U2_PORT_RG_IDDIG;
		break;
	case MTU3_DR_FORCE_NONE:
		value &= ~(SSUSB_U2_PORT_FORCE_IDDIG | SSUSB_U2_PORT_RG_IDDIG);
		break;
	default:
		return;
	}
	FUNC2(ssusb->ippc_base, FUNC0(0), value);
}