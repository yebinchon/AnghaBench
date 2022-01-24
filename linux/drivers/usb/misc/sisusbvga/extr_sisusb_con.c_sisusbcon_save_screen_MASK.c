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
struct vc_data {scalar_t__ vc_origin; scalar_t__ vc_screenbuf; scalar_t__ vc_screenbuf_size; int /*<<< orphan*/  vc_num; } ;
struct sisusb_usb_data {int /*<<< orphan*/  lock; scalar_t__ scrbuf_size; scalar_t__ scrbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct sisusb_usb_data* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct vc_data*,struct sisusb_usb_data*) ; 

__attribute__((used)) static void
FUNC5(struct vc_data *c)
{
	struct sisusb_usb_data *sisusb;
	int length;

	/* Save the current screen contents to vc's private
	 * buffer.
	 */

	sisusb = FUNC3(c->vc_num);
	if (!sisusb)
		return;

	/* sisusb->lock is down */

	if (FUNC4(c, sisusb)) {
		FUNC2(&sisusb->lock);
		return;
	}

	/* Check that we don't copy too much */
	length = FUNC1((int)c->vc_screenbuf_size,
			(int)(sisusb->scrbuf + sisusb->scrbuf_size - c->vc_origin));

	/* Save the screen contents to vc's private buffer */
	FUNC0((u16 *)c->vc_screenbuf, (u16 *)c->vc_origin, length);

	FUNC2(&sisusb->lock);
}