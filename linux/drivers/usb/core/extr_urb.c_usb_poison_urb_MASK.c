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
struct urb {int /*<<< orphan*/  use_count; int /*<<< orphan*/  ep; int /*<<< orphan*/  dev; int /*<<< orphan*/  reject; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usb_kill_urb_queue ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

void FUNC5(struct urb *urb)
{
	FUNC2();
	if (!urb)
		return;
	FUNC0(&urb->reject);

	if (!urb->dev || !urb->ep)
		return;

	FUNC3(urb, -ENOENT);
	FUNC4(usb_kill_urb_queue, FUNC1(&urb->use_count) == 0);
}