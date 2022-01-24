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
struct keyspan_serial_private {int /*<<< orphan*/  indat_urb; int /*<<< orphan*/  glocont_urb; int /*<<< orphan*/  instat_urb; } ;

/* Variables and functions */
 struct keyspan_serial_private* FUNC0 (struct usb_serial*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct usb_serial *serial)
{
	struct keyspan_serial_private *s_priv;

	s_priv = FUNC0(serial);

	FUNC1(s_priv->instat_urb);
	FUNC1(s_priv->glocont_urb);
	FUNC1(s_priv->indat_urb);
}