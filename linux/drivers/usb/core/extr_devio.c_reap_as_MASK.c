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
struct usb_device {int dummy; } ;
struct usb_dev_state {int /*<<< orphan*/  wait; struct usb_device* dev; } ;
struct async {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct async* FUNC3 (struct usb_dev_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_dev_state*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_device*) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static struct async *FUNC11(struct usb_dev_state *ps)
{
	FUNC0(wait, current);
	struct async *as = NULL;
	struct usb_device *dev = ps->dev;

	FUNC2(&ps->wait, &wait);
	for (;;) {
		FUNC1(TASK_INTERRUPTIBLE);
		as = FUNC3(ps);
		if (as || !FUNC4(ps))
			break;
		if (FUNC8(current))
			break;
		FUNC10(dev);
		FUNC6();
		FUNC9(dev);
	}
	FUNC5(&ps->wait, &wait);
	FUNC7(TASK_RUNNING);
	return as;
}