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
struct usb_ep {struct f_loopback* driver_data; } ;
struct usb_composite_dev {int /*<<< orphan*/  gadget; } ;
struct f_loopback {int /*<<< orphan*/  function; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct usb_ep*) ; 
 int FUNC1 (struct usb_ep*) ; 

__attribute__((used)) static int FUNC2(struct usb_composite_dev *cdev,
			   struct f_loopback *loop, struct usb_ep *ep)
{
	int					result;

	result = FUNC0(cdev->gadget, &(loop->function), ep);
	if (result)
		goto out;

	result = FUNC1(ep);
	if (result < 0)
		goto out;
	ep->driver_data = loop;
	result = 0;

out:
	return result;
}