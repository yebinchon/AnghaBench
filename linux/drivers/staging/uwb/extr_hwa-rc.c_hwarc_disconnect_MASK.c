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
struct uwb_rc {int dummy; } ;
struct usb_interface {int dummy; } ;
struct hwarc {int /*<<< orphan*/  usb_dev; int /*<<< orphan*/  usb_iface; struct uwb_rc* uwb_rc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hwarc*) ; 
 struct hwarc* FUNC1 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct uwb_rc*) ; 
 int /*<<< orphan*/  FUNC6 (struct uwb_rc*) ; 

__attribute__((used)) static void FUNC7(struct usb_interface *iface)
{
	struct hwarc *hwarc = FUNC1(iface);
	struct uwb_rc *uwb_rc = hwarc->uwb_rc;

	FUNC4(hwarc->usb_iface, NULL);
	FUNC6(uwb_rc);
	FUNC3(hwarc->usb_iface);
	FUNC2(hwarc->usb_dev);
	FUNC0(hwarc);
	FUNC5(uwb_rc);	/* when creating the device, refcount = 1 */
}