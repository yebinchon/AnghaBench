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
struct usb_gadget {int dummy; } ;
struct mtu3 {int /*<<< orphan*/  mac_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  U3D_USB20_FRAME_NUM ; 
 struct mtu3* FUNC0 (struct usb_gadget*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct usb_gadget *gadget)
{
	struct mtu3 *mtu = FUNC0(gadget);

	return (int)FUNC1(mtu->mac_base, U3D_USB20_FRAME_NUM);
}