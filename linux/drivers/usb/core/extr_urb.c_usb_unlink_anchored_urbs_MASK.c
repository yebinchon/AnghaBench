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
struct usb_anchor {int dummy; } ;
struct urb {int dummy; } ;

/* Variables and functions */
 struct urb* FUNC0 (struct usb_anchor*) ; 
 int /*<<< orphan*/  FUNC1 (struct urb*) ; 
 int /*<<< orphan*/  FUNC2 (struct urb*) ; 

void FUNC3(struct usb_anchor *anchor)
{
	struct urb *victim;

	while ((victim = FUNC0(anchor)) != NULL) {
		FUNC2(victim);
		FUNC1(victim);
	}
}