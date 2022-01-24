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
struct ohci_hcd {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_hcd*) ; 
 struct ohci_hcd* FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct usb_hcd *hcd)
{
	struct ohci_hcd	*ohci = FUNC1(hcd);
	unsigned long flags;

	FUNC2(&ohci->lock, flags);
	FUNC0(hcd);
	FUNC3(&ohci->lock, flags);
}