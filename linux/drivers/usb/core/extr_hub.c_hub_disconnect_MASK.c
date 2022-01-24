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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_hub {int disconnected; int /*<<< orphan*/  kref; int /*<<< orphan*/  buffer; int /*<<< orphan*/  status; int /*<<< orphan*/  descriptor; int /*<<< orphan*/  ports; int /*<<< orphan*/  urb; TYPE_1__* hdev; scalar_t__ error; } ;
struct usb_device {int maxchild; } ;
struct TYPE_2__ {scalar_t__ speed; } ;

/* Variables and functions */
 int /*<<< orphan*/  HUB_DISCONNECT ; 
 scalar_t__ USB_SPEED_HIGH ; 
 int /*<<< orphan*/  device_state_lock ; 
 int /*<<< orphan*/  highspeed_hubs ; 
 int /*<<< orphan*/  FUNC0 (struct usb_hub*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hub_release ; 
 struct usb_device* FUNC1 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct usb_hub* FUNC10 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_hub*,int) ; 
 int /*<<< orphan*/  usb_port_peer_mutex ; 
 int /*<<< orphan*/  FUNC12 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct usb_interface *intf)
{
	struct usb_hub *hub = FUNC10(intf);
	struct usb_device *hdev = FUNC1(intf);
	int port1;

	/*
	 * Stop adding new hub events. We do not want to block here and thus
	 * will not try to remove any pending work item.
	 */
	hub->disconnected = 1;

	/* Disconnect all children and quiesce the hub */
	hub->error = 0;
	FUNC0(hub, HUB_DISCONNECT);

	FUNC4(&usb_port_peer_mutex);

	/* Avoid races with recursively_mark_NOTATTACHED() */
	FUNC7(&device_state_lock);
	port1 = hdev->maxchild;
	hdev->maxchild = 0;
	FUNC12(intf, NULL);
	FUNC8(&device_state_lock);

	for (; port1 > 0; --port1)
		FUNC11(hub, port1);

	FUNC5(&usb_port_peer_mutex);

	if (hub->hdev->speed == USB_SPEED_HIGH)
		highspeed_hubs--;

	FUNC9(hub->urb);
	FUNC2(hub->ports);
	FUNC2(hub->descriptor);
	FUNC2(hub->status);
	FUNC2(hub->buffer);

	FUNC6(&intf->dev, false);
	FUNC3(&hub->kref, hub_release);
}