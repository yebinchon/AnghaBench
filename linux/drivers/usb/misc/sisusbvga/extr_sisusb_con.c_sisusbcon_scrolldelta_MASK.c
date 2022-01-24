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
struct sisusb_usb_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  scrbuf_size; scalar_t__ scrbuf; int /*<<< orphan*/  con_rolled_over; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct sisusb_usb_data* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct vc_data*,struct sisusb_usb_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct sisusb_usb_data*,struct vc_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct vc_data*,int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct vc_data *c, int lines)
{
	struct sisusb_usb_data *sisusb;

	sisusb = FUNC1(c->vc_num);
	if (!sisusb)
		return;

	/* sisusb->lock is down */

	if (FUNC2(c, sisusb)) {
		FUNC0(&sisusb->lock);
		return;
	}

	FUNC4(c, lines, sisusb->con_rolled_over,
			(void *)sisusb->scrbuf, sisusb->scrbuf_size);

	FUNC3(sisusb, c);

	FUNC0(&sisusb->lock);
}