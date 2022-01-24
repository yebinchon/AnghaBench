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
struct usb_port {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct usb_port*,struct usb_port*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int usb_port_block_power_off ; 

__attribute__((used)) static void FUNC4(struct usb_port *left, struct usb_port *right)
{
	int rc;

	rc = FUNC2(left, right);
	if (rc == 0) {
		FUNC0(&left->dev, "peered to %s\n", FUNC1(&right->dev));
	} else {
		FUNC0(&left->dev, "failed to peer to %s (%d)\n",
				FUNC1(&right->dev), rc);
		FUNC3("usb: port power management may be unreliable\n");
		usb_port_block_power_off = 1;
	}
}