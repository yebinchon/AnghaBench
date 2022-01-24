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
struct keyspan_serial_private {struct keyspan_serial_private* instat_buf; struct keyspan_serial_private* indat_buf; struct keyspan_serial_private* glocont_buf; struct keyspan_serial_private* ctrl_buf; int /*<<< orphan*/  glocont_urb; int /*<<< orphan*/  indat_urb; int /*<<< orphan*/  instat_urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct keyspan_serial_private*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct keyspan_serial_private* FUNC2 (struct usb_serial*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct usb_serial *serial)
{
	struct keyspan_serial_private *s_priv;

	s_priv = FUNC2(serial);

	/* Make sure to unlink the URBs submitted in attach. */
	FUNC3(s_priv->instat_urb);
	FUNC3(s_priv->indat_urb);

	FUNC1(s_priv->instat_urb);
	FUNC1(s_priv->indat_urb);
	FUNC1(s_priv->glocont_urb);

	FUNC0(s_priv->ctrl_buf);
	FUNC0(s_priv->glocont_buf);
	FUNC0(s_priv->indat_buf);
	FUNC0(s_priv->instat_buf);

	FUNC0(s_priv);
}