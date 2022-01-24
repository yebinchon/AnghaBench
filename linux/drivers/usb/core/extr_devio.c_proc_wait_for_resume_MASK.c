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
struct usb_dev_state {int /*<<< orphan*/  dev; int /*<<< orphan*/  not_yet_resumed; int /*<<< orphan*/  wait_for_resume; } ;

/* Variables and functions */
 int EINTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct usb_dev_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct usb_dev_state *ps)
{
	int ret;

	FUNC3(ps->dev);
	ret = FUNC4(ps->wait_for_resume,
			FUNC0(ps->not_yet_resumed) == 0);
	FUNC2(ps->dev);

	if (ret != 0)
		return -EINTR;
	return FUNC1(ps);
}