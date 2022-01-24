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
struct each_dev_arg {void* member_0; int (* member_1 ) (struct usb_device*,void*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  __each_dev ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct each_dev_arg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usb_bus_type ; 

int FUNC1(void *data, int (*fn)(struct usb_device *, void *))
{
	struct each_dev_arg arg = {data, fn};

	return FUNC0(&usb_bus_type, NULL, &arg, __each_dev);
}