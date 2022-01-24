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
typedef  int /*<<< orphan*/  u16 ;
struct usb_hcd {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC2(struct usb_hcd *hcd, u16 typereq, u16 wvalue,
				 u16 windex, char *buf, u16 wlength)
{
	int retval = FUNC0(FUNC1(hcd), typereq,
					  wvalue, windex, buf, wlength);
	return retval;
}