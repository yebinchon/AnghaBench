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
struct wdm_device {scalar_t__ resp_count; int /*<<< orphan*/  flags; TYPE_1__* intf; int /*<<< orphan*/  iuspin; int /*<<< orphan*/  response; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  WDM_RESPONDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct wdm_device *desc)
{
	int rv = 0;

	/* submit read urb only if the device is waiting for it */
	if (!desc->resp_count || !--desc->resp_count)
		goto out;

	FUNC2(WDM_RESPONDING, &desc->flags);
	FUNC4(&desc->iuspin);
	rv = FUNC5(desc->response, GFP_KERNEL);
	FUNC3(&desc->iuspin);
	if (rv) {
		FUNC1(&desc->intf->dev,
			"usb_submit_urb failed with result %d\n", rv);

		/* make sure the next notification trigger a submit */
		FUNC0(WDM_RESPONDING, &desc->flags);
		desc->resp_count = 0;
	}
out:
	return rv;
}