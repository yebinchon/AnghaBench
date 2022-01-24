#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct pn533_usb_phy {int /*<<< orphan*/  ack_buffer; TYPE_1__* ack_urb; TYPE_1__* out_urb; TYPE_1__* in_urb; int /*<<< orphan*/  priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  transfer_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 struct pn533_usb_phy* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct usb_interface *interface)
{
	struct pn533_usb_phy *phy = FUNC4(interface);

	if (!phy)
		return;

	FUNC2(phy->priv);

	FUNC6(interface, NULL);

	FUNC5(phy->in_urb);
	FUNC5(phy->out_urb);
	FUNC5(phy->ack_urb);

	FUNC0(phy->in_urb->transfer_buffer);
	FUNC3(phy->in_urb);
	FUNC3(phy->out_urb);
	FUNC3(phy->ack_urb);
	FUNC0(phy->ack_buffer);

	FUNC1(&interface->dev, "NXP PN533 NFC device disconnected\n");
}