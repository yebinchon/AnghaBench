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
struct usb_dev_state {int suspend_allowed; int /*<<< orphan*/  dev; int /*<<< orphan*/  not_yet_resumed; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_dev_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct usb_dev_state *ps)
{
	if (!FUNC1(ps))
		return -ENODEV;

	FUNC0(ps->not_yet_resumed, 1);
	if (!ps->suspend_allowed) {
		FUNC2(ps->dev);
		ps->suspend_allowed = true;
	}
	return 0;
}