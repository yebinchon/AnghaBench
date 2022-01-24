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
struct usb_interface_cache {int /*<<< orphan*/  ref; } ;
struct usb_interface {int /*<<< orphan*/  altsetting; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 struct usb_interface_cache* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct usb_interface* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usb_release_interface_cache ; 

__attribute__((used)) static void FUNC7(struct device *dev)
{
	struct usb_interface *intf = FUNC5(dev);
	struct usb_interface_cache *intfc =
			FUNC0(intf->altsetting);

	FUNC3(&intfc->ref, usb_release_interface_cache);
	FUNC6(FUNC1(intf));
	FUNC4(dev->of_node);
	FUNC2(intf);
}