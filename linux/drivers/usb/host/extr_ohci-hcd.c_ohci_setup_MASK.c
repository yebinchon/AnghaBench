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
struct ohci_hcd {int dummy; } ;

/* Variables and functions */
 struct ohci_hcd* FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (struct ohci_hcd*) ; 
 int FUNC2 (struct ohci_hcd*) ; 

int FUNC3(struct usb_hcd *hcd)
{
	struct ohci_hcd		*ohci = FUNC0(hcd);

	FUNC1(ohci);
	
	return FUNC2(ohci);
}