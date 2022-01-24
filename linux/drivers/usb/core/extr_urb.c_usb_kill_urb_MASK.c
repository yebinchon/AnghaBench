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
struct urb {int /*<<< orphan*/  reject; int /*<<< orphan*/  use_count; scalar_t__ ep; scalar_t__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usb_kill_urb_queue ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

void FUNC6(struct urb *urb)
{
	FUNC3();
	if (!(urb && urb->dev && urb->ep))
		return;
	FUNC1(&urb->reject);

	FUNC4(urb, -ENOENT);
	FUNC5(usb_kill_urb_queue, FUNC2(&urb->use_count) == 0);

	FUNC0(&urb->reject);
}