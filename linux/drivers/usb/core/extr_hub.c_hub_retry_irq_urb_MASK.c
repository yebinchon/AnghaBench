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
struct usb_hub {int dummy; } ;
struct timer_list {int dummy; } ;

/* Variables and functions */
 struct usb_hub* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct usb_hub* hub ; 
 int /*<<< orphan*/  FUNC1 (struct usb_hub*) ; 
 int /*<<< orphan*/  irq_urb_retry ; 

__attribute__((used)) static void FUNC2(struct timer_list *t)
{
	struct usb_hub *hub = FUNC0(hub, t, irq_urb_retry);

	FUNC1(hub);
}