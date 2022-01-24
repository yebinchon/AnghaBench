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
struct set_config_request {int config; int /*<<< orphan*/  work; int /*<<< orphan*/  node; struct usb_device* udev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  driver_set_config_work ; 
 struct set_config_request* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  set_config_list ; 
 int /*<<< orphan*/  set_config_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*) ; 

int FUNC7(struct usb_device *udev, int config)
{
	struct set_config_request *req;

	req = FUNC1(sizeof(*req), GFP_KERNEL);
	if (!req)
		return -ENOMEM;
	req->udev = udev;
	req->config = config;
	FUNC0(&req->work, driver_set_config_work);

	FUNC4(&set_config_lock);
	FUNC2(&req->node, &set_config_list);
	FUNC5(&set_config_lock);

	FUNC6(udev);
	FUNC3(&req->work);
	return 0;
}