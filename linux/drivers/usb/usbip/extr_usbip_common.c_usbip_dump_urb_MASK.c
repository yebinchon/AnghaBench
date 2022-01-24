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
struct usb_ctrlrequest {int dummy; } ;
struct urb {int /*<<< orphan*/  error_count; int /*<<< orphan*/  interval; int /*<<< orphan*/  number_of_packets; int /*<<< orphan*/  start_frame; scalar_t__ setup_packet; int /*<<< orphan*/  pipe; int /*<<< orphan*/  actual_length; int /*<<< orphan*/  transfer_buffer_length; int /*<<< orphan*/  transfer_flags; int /*<<< orphan*/  status; TYPE_1__* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 scalar_t__ PIPE_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_ctrlrequest*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void FUNC6(struct urb *urb)
{
	struct device *dev;

	if (!urb) {
		FUNC1("urb: null pointer!!\n");
		return;
	}

	if (!urb->dev) {
		FUNC1("urb->dev: null pointer!!\n");
		return;
	}

	dev = &urb->dev->dev;

	FUNC5(urb->dev);

	FUNC0(dev, "   pipe                  :%08x ", urb->pipe);

	FUNC3(urb->pipe);

	FUNC0(dev, "   status                :%d\n", urb->status);
	FUNC0(dev, "   transfer_flags        :%08X\n", urb->transfer_flags);
	FUNC0(dev, "   transfer_buffer_length:%d\n",
						urb->transfer_buffer_length);
	FUNC0(dev, "   actual_length         :%d\n", urb->actual_length);

	if (urb->setup_packet && FUNC2(urb->pipe) == PIPE_CONTROL)
		FUNC4(
			(struct usb_ctrlrequest *)urb->setup_packet);

	FUNC0(dev, "   start_frame           :%d\n", urb->start_frame);
	FUNC0(dev, "   number_of_packets     :%d\n", urb->number_of_packets);
	FUNC0(dev, "   interval              :%d\n", urb->interval);
	FUNC0(dev, "   error_count           :%d\n", urb->error_count);
}