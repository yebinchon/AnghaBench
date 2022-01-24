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
struct usb_serial {int dummy; } ;
struct edgeport_serial {int /*<<< orphan*/  heartbeat_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct edgeport_serial*) ; 
 struct edgeport_serial* FUNC2 (struct usb_serial*) ; 

__attribute__((used)) static void FUNC3(struct usb_serial *serial)
{
	struct edgeport_serial *edge_serial = FUNC2(serial);

	FUNC0(&edge_serial->heartbeat_work);
	FUNC1(edge_serial);
}