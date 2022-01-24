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
struct usb_hcd {int dummy; } ;
struct gbphy_device {int dummy; } ;
struct gb_usb_device {struct gb_connection* connection; } ;
struct gb_connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC1 (struct gb_connection*) ; 
 struct gb_usb_device* FUNC2 (struct gbphy_device*) ; 
 struct usb_hcd* FUNC3 (struct gb_usb_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_hcd*) ; 

__attribute__((used)) static void FUNC6(struct gbphy_device *gbphy_dev)
{
	struct gb_usb_device *gb_usb_dev = FUNC2(gbphy_dev);
	struct gb_connection *connection = gb_usb_dev->connection;
	struct usb_hcd *hcd = FUNC3(gb_usb_dev);

	FUNC5(hcd);
	FUNC1(connection);
	FUNC0(connection);
	FUNC4(hcd);
}