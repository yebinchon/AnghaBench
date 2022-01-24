#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_ctrlrequest {int /*<<< orphan*/  wIndex; } ;
struct urb {TYPE_1__* dev; scalar_t__ setup_packet; } ;
struct TYPE_4__ {int /*<<< orphan*/  devnum; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int) ; 
 int FUNC4 (TYPE_1__*,int) ; 
 int FUNC5 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC6(struct urb *urb)
{
	struct usb_ctrlrequest *req;
	int target_endp;
	int target_dir;
	int target_pipe;
	int ret;

	req = (struct usb_ctrlrequest *) urb->setup_packet;

	/*
	 * The stalled endpoint is specified in the wIndex value. The endpoint
	 * of the urb is the target of this clear_halt request (i.e., control
	 * endpoint).
	 */
	target_endp = FUNC2(req->wIndex) & 0x000f;

	/* the stalled endpoint direction is IN or OUT?. USB_DIR_IN is 0x80.  */
	target_dir = FUNC2(req->wIndex) & 0x0080;

	if (target_dir)
		target_pipe = FUNC4(urb->dev, target_endp);
	else
		target_pipe = FUNC5(urb->dev, target_endp);

	ret = FUNC3(urb->dev, target_pipe);
	if (ret < 0)
		FUNC0(&urb->dev->dev,
			"usb_clear_halt error: devnum %d endp %d ret %d\n",
			urb->dev->devnum, target_endp, ret);
	else
		FUNC1(&urb->dev->dev,
			 "usb_clear_halt done: devnum %d endp %d\n",
			 urb->dev->devnum, target_endp);

	return ret;
}