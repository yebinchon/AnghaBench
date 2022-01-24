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
struct ssusb_mtk {int /*<<< orphan*/  u3_ports; int /*<<< orphan*/  u2_ports; int /*<<< orphan*/  dev; int /*<<< orphan*/  ippc_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  U3D_SSUSB_IP_XHCI_CAP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ssusb_mtk *ssusb)
{
	u32 xhci_cap;

	xhci_cap = FUNC3(ssusb->ippc_base, U3D_SSUSB_IP_XHCI_CAP);
	ssusb->u2_ports = FUNC0(xhci_cap);
	ssusb->u3_ports = FUNC1(xhci_cap);

	FUNC2(ssusb->dev, "host - u2_ports:%d, u3_ports:%d\n",
		 ssusb->u2_ports, ssusb->u3_ports);
}