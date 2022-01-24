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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sisusb_usb_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct sisusb_usb_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sisusb_usb_data*,struct vc_data*,int,int) ; 
 scalar_t__ FUNC4 (struct vc_data*,struct sisusb_usb_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct sisusb_usb_data*,struct vc_data*,int,int) ; 

__attribute__((used)) static void
FUNC6(struct vc_data *c, int ch, int y, int x)
{
	struct sisusb_usb_data *sisusb;

	sisusb = FUNC2(c->vc_num);
	if (!sisusb)
		return;

	/* sisusb->lock is down */
	if (FUNC4(c, sisusb)) {
		FUNC0(&sisusb->lock);
		return;
	}

	FUNC1(sisusb, FUNC5(sisusb, c, x, y),
				FUNC3(sisusb, c, x, y), 2);

	FUNC0(&sisusb->lock);
}