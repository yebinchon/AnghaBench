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
struct usb_hub {TYPE_1__* hdev; } ;
struct usb_hcd {int wireless; } ;
struct TYPE_2__ {int /*<<< orphan*/  bus; int /*<<< orphan*/ * parent; } ;

/* Variables and functions */
 struct usb_hcd* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned FUNC1(struct usb_hub *hub)
{
	struct usb_hcd *hcd;
	if (hub->hdev->parent != NULL)  /* not a root hub? */
		return 0;
	hcd = FUNC0(hub->hdev->bus);
	return hcd->wireless;
}