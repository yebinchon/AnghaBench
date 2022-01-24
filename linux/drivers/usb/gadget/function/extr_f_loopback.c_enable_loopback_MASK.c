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
struct usb_composite_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct f_loopback {int /*<<< orphan*/  in_ep; int /*<<< orphan*/  out_ep; TYPE_1__ function; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_composite_dev*,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct usb_composite_dev*,struct f_loopback*) ; 
 int FUNC2 (struct usb_composite_dev*,struct f_loopback*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct usb_composite_dev *cdev, struct f_loopback *loop)
{
	int					result = 0;

	result = FUNC2(cdev, loop, loop->in_ep);
	if (result)
		goto out;

	result = FUNC2(cdev, loop, loop->out_ep);
	if (result)
		goto disable_in;

	result = FUNC1(cdev, loop);
	if (result)
		goto disable_out;

	FUNC0(cdev, "%s enabled\n", loop->function.name);
	return 0;

disable_out:
	FUNC3(loop->out_ep);
disable_in:
	FUNC3(loop->in_ep);
out:
	return result;
}