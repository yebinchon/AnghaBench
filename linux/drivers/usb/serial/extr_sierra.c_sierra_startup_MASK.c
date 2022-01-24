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
struct usb_serial {int /*<<< orphan*/  dev; } ;
struct sierra_intf_private {int /*<<< orphan*/  susp_lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct sierra_intf_private* FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ nmea ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_serial*,struct sierra_intf_private*) ; 

__attribute__((used)) static int FUNC5(struct usb_serial *serial)
{
	struct sierra_intf_private *intfdata;

	intfdata = FUNC0(sizeof(*intfdata), GFP_KERNEL);
	if (!intfdata)
		return -ENOMEM;

	FUNC3(&intfdata->susp_lock);

	FUNC4(serial, intfdata);

	/* Set Device mode to D0 */
	FUNC1(serial->dev, 0x0000);

	/* Check NMEA and set */
	if (nmea)
		FUNC2(serial->dev, 1);

	return 0;
}