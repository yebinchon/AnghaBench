#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct urb {size_t transfer_buffer_length; } ;
struct TYPE_3__ {size_t size; } ;
struct dlfb_data {TYPE_2__* udev; int /*<<< orphan*/  lost_pixels; TYPE_1__ urbs; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*) ; 
 int FUNC4 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct dlfb_data *dlfb, struct urb *urb, size_t len)
{
	int ret;

	FUNC0(len > dlfb->urbs.size);

	urb->transfer_buffer_length = len; /* set to actual payload len */
	ret = FUNC4(urb, GFP_KERNEL);
	if (ret) {
		FUNC3(urb); /* because no one else will */
		FUNC1(&dlfb->lost_pixels, 1);
		FUNC2(&dlfb->udev->dev, "submit urb error: %d\n", ret);
	}
	return ret;
}