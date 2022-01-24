#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct vc_data {unsigned long vc_origin; scalar_t__ vc_screenbuf; scalar_t__ vc_screenbuf_size; int /*<<< orphan*/  vc_num; } ;
struct sisusb_usb_data {unsigned long scrbuf; unsigned long scrbuf_size; int /*<<< orphan*/  lock; TYPE_1__* sisusb_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sisusb_usb_data*,char*,int /*<<< orphan*/ ,int) ; 
 struct sisusb_usb_data* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sisusb_usb_data*,struct vc_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct vc_data*,struct sisusb_usb_data*) ; 

__attribute__((used)) static int
FUNC8(struct vc_data *c)
{
	struct sisusb_usb_data *sisusb;
	int length;

	/* Returnvalue 0 means we have fully restored screen,
	 *	and vt doesn't need to call do_update_region().
	 * Returnvalue != 0 naturally means the opposite.
	 */

	sisusb = FUNC5(c->vc_num);
	if (!sisusb)
		return 0;

	/* sisusb->lock is down */

	/* Don't write to screen if in gfx mode */
	if (FUNC7(c, sisusb)) {
		FUNC3(&sisusb->lock);
		return 0;
	}

	/* That really should not happen. It would mean we are
	 * being called while the vc is using its private buffer
	 * as origin.
	 */
	if (c->vc_origin == (unsigned long)c->vc_screenbuf) {
		FUNC3(&sisusb->lock);
		FUNC0(&sisusb->sisusb_dev->dev, "ASSERT ORIGIN != SCREENBUF!\n");
		return 0;
	}

	/* Check that we don't copy too much */
	length = FUNC2((int)c->vc_screenbuf_size,
			(int)(sisusb->scrbuf + sisusb->scrbuf_size - c->vc_origin));

	/* Restore the screen contents */
	FUNC1((u16 *)c->vc_origin, (u16 *)c->vc_screenbuf, length);

	FUNC4(sisusb, (char *)c->vc_origin,
			FUNC6(sisusb, c, 0, 0), length);

	FUNC3(&sisusb->lock);

	return 0;
}