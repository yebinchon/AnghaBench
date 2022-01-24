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
struct max3421_hcd {int port_status; int /*<<< orphan*/  spi_thread; int /*<<< orphan*/  todo; } ;

/* Variables and functions */
 int /*<<< orphan*/  RESET_PORT ; 
 int USB_PORT_STAT_ENABLE ; 
 int USB_PORT_STAT_LOW_SPEED ; 
 int USB_PORT_STAT_RESET ; 
 struct max3421_hcd* FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct usb_hcd *hcd)
{
	struct max3421_hcd *max3421_hcd = FUNC0(hcd);

	max3421_hcd->port_status &= ~(USB_PORT_STAT_ENABLE |
				      USB_PORT_STAT_LOW_SPEED);
	max3421_hcd->port_status |= USB_PORT_STAT_RESET;
	FUNC1(RESET_PORT, &max3421_hcd->todo);
	FUNC2(max3421_hcd->spi_thread);
	return 0;
}