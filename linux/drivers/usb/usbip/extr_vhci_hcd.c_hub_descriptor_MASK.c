#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct usb_hub_descriptor* DeviceRemovable; } ;
struct TYPE_4__ {TYPE_1__ hs; } ;
struct usb_hub_descriptor {int bNbrPorts; TYPE_2__ u; scalar_t__ bDescLength; int /*<<< orphan*/  wHubCharacteristics; int /*<<< orphan*/  bDescriptorType; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int HUB_CHAR_COMMON_OCPM ; 
 int HUB_CHAR_INDV_PORT_LPSM ; 
 int /*<<< orphan*/  USB_DT_HUB ; 
 scalar_t__ USB_DT_HUB_NONVAR_SIZE ; 
 scalar_t__ USB_MAXCHILDREN ; 
 scalar_t__ VHCI_HC_PORTS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_hub_descriptor*,int,int) ; 

__attribute__((used)) static inline void FUNC3(struct usb_hub_descriptor *desc)
{
	int width;

	FUNC2(desc, 0, sizeof(*desc));
	desc->bDescriptorType = USB_DT_HUB;
	desc->wHubCharacteristics = FUNC1(
		HUB_CHAR_INDV_PORT_LPSM | HUB_CHAR_COMMON_OCPM);

	desc->bNbrPorts = VHCI_HC_PORTS;
	FUNC0(VHCI_HC_PORTS > USB_MAXCHILDREN);
	width = desc->bNbrPorts / 8 + 1;
	desc->bDescLength = USB_DT_HUB_NONVAR_SIZE + 2 * width;
	FUNC2(&desc->u.hs.DeviceRemovable[0], 0, width);
	FUNC2(&desc->u.hs.DeviceRemovable[width], 0xff, width);
}