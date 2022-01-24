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
struct urb {int /*<<< orphan*/  urb_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  hcd_urb_list_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct usb_hcd *hcd, struct urb *urb)
{
	/* clear all state linking urb to this dev (and hcd) */
	FUNC1(&hcd_urb_list_lock);
	FUNC0(&urb->urb_list);
	FUNC2(&hcd_urb_list_lock);
}