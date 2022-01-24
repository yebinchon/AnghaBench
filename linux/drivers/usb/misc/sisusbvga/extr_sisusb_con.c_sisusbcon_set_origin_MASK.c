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
struct vc_data {int /*<<< orphan*/  vc_visible_origin; int /*<<< orphan*/  vc_origin; int /*<<< orphan*/  vc_num; } ;
struct sisusb_usb_data {int /*<<< orphan*/  lock; scalar_t__ con_rolled_over; int /*<<< orphan*/  scrbuf; scalar_t__ con_blanked; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct sisusb_usb_data* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct vc_data*,struct sisusb_usb_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct sisusb_usb_data*,struct vc_data*) ; 

__attribute__((used)) static int
FUNC4(struct vc_data *c)
{
	struct sisusb_usb_data *sisusb;

	/* Returning != 0 means we were successful.
	 * Returning 0 will vt make to use its own
	 *	screenbuffer as the origin.
	 */

	sisusb = FUNC1(c->vc_num);
	if (!sisusb)
		return 0;

	/* sisusb->lock is down */

	if (FUNC2(c, sisusb) || sisusb->con_blanked) {
		FUNC0(&sisusb->lock);
		return 0;
	}

	c->vc_origin = c->vc_visible_origin = sisusb->scrbuf;

	FUNC3(sisusb, c);

	sisusb->con_rolled_over = 0;

	FUNC0(&sisusb->lock);

	return true;
}