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
struct qt2_serial_private {struct qt2_serial_private* read_buffer; int /*<<< orphan*/  read_urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qt2_serial_private*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct qt2_serial_private* FUNC2 (struct usb_serial*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct usb_serial *serial)
{
	struct qt2_serial_private *serial_priv;

	serial_priv = FUNC2(serial);

	FUNC3(serial_priv->read_urb);
	FUNC1(serial_priv->read_urb);
	FUNC0(serial_priv->read_buffer);
	FUNC0(serial_priv);
}