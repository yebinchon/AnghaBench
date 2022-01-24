#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct work_struct {int dummy; } ;
struct most_dev {int* is_channel_healthy; int /*<<< orphan*/  io_mutex; int /*<<< orphan*/  iface; TYPE_2__* usb_device; int /*<<< orphan*/ * ep_address; TYPE_1__* conf; int /*<<< orphan*/ * busy_urbs; } ;
struct clear_hold_work {unsigned int channel; int pipe; struct most_dev* mdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {scalar_t__ data_type; scalar_t__ direction; } ;

/* Variables and functions */
 scalar_t__ MOST_CH_ASYNC ; 
 scalar_t__ MOST_CH_RX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct clear_hold_work* FUNC5 (struct work_struct*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct work_struct *wq_obj)
{
	struct clear_hold_work *clear_work = FUNC5(wq_obj);
	struct most_dev *mdev = clear_work->mdev;
	unsigned int channel = clear_work->channel;
	int pipe = clear_work->pipe;

	FUNC3(&mdev->io_mutex);
	FUNC2(&mdev->iface, channel);
	FUNC7(&mdev->busy_urbs[channel]);
	if (FUNC6(mdev->usb_device, pipe))
		FUNC0(&mdev->usb_device->dev, "Failed to reset endpoint.\n");

	/* If the functional Stall condition has been set on an
	 * asynchronous rx channel, we need to clear the tx channel
	 * too, since the hardware runs its clean-up sequence on both
	 * channels, as they are physically one on the network.
	 *
	 * The USB interface that exposes the asynchronous channels
	 * contains always two endpoints, and two only.
	 */
	if (mdev->conf[channel].data_type == MOST_CH_ASYNC &&
	    mdev->conf[channel].direction == MOST_CH_RX) {
		int peer = 1 - channel;
		int snd_pipe = FUNC8(mdev->usb_device,
					       mdev->ep_address[peer]);
		FUNC6(mdev->usb_device, snd_pipe);
	}
	mdev->is_channel_healthy[channel] = true;
	FUNC1(&mdev->iface, channel);
	FUNC4(&mdev->io_mutex);
}