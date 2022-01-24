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
struct usb_interface {int dummy; } ;
struct acm {scalar_t__ nb_index; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_RX_STALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct acm* FUNC1 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC2(struct usb_interface *intf)
{
	struct acm *acm = FUNC1(intf);

	FUNC0(EVENT_RX_STALL, &acm->flags);
	acm->nb_index = 0; /* pending control transfers are lost */

	return 0;
}