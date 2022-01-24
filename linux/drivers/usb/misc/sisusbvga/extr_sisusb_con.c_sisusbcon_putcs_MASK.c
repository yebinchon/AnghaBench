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
struct vc_data {int /*<<< orphan*/  vc_num; } ;
struct sisusb_usb_data {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned short const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sisusb_usb_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct sisusb_usb_data* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sisusb_usb_data*,struct vc_data*,int,int) ; 
 scalar_t__ FUNC5 (struct vc_data*,struct sisusb_usb_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct sisusb_usb_data*,struct vc_data*,int,int) ; 

__attribute__((used)) static void
FUNC7(struct vc_data *c, const unsigned short *s,
		         int count, int y, int x)
{
	struct sisusb_usb_data *sisusb;

	sisusb = FUNC3(c->vc_num);
	if (!sisusb)
		return;

	/* sisusb->lock is down */

	/* Need to put the characters into the buffer ourselves,
	 * because the vt does this AFTER calling us.
	 */

	FUNC0(FUNC6(sisusb, c, x, y), s, count * 2);

	if (FUNC5(c, sisusb)) {
		FUNC1(&sisusb->lock);
		return;
	}

	FUNC2(sisusb, FUNC6(sisusb, c, x, y),
			FUNC4(sisusb, c, x, y), count * 2);

	FUNC1(&sisusb->lock);
}