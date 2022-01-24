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
struct usb_rx {struct usb_rx* buf; int /*<<< orphan*/  urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_rx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct usb_rx *r)
{
	if (r) {
		FUNC1(r->urb);
		FUNC0(r->buf);
		FUNC0(r);
	}
}