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
struct cp210x_serial_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_serial*) ; 
 int /*<<< orphan*/  FUNC1 (struct cp210x_serial_private*) ; 
 struct cp210x_serial_private* FUNC2 (struct usb_serial*) ; 

__attribute__((used)) static void FUNC3(struct usb_serial *serial)
{
	struct cp210x_serial_private *priv = FUNC2(serial);

	FUNC0(serial);

	FUNC1(priv);
}