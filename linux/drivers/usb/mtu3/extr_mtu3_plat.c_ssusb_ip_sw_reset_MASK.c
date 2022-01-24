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
struct ssusb_mtk {int /*<<< orphan*/  ippc_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSUSB_IP_DEV_PDN ; 
 int /*<<< orphan*/  SSUSB_IP_SW_RST ; 
 int /*<<< orphan*/  U3D_SSUSB_IP_PW_CTRL0 ; 
 int /*<<< orphan*/  U3D_SSUSB_IP_PW_CTRL2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct ssusb_mtk *ssusb)
{
	/* reset whole ip (xhci & u3d) */
	FUNC1(ssusb->ippc_base, U3D_SSUSB_IP_PW_CTRL0, SSUSB_IP_SW_RST);
	FUNC2(1);
	FUNC0(ssusb->ippc_base, U3D_SSUSB_IP_PW_CTRL0, SSUSB_IP_SW_RST);

	/*
	 * device ip may be powered on in firmware/BROM stage before entering
	 * kernel stage;
	 * power down device ip, otherwise ip-sleep will fail when working as
	 * host only mode
	 */
	FUNC1(ssusb->ippc_base, U3D_SSUSB_IP_PW_CTRL2, SSUSB_IP_DEV_PDN);
}