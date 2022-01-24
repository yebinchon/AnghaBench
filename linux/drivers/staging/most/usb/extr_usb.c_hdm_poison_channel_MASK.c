#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct most_interface {int num_channels; } ;
struct most_dev {int* is_channel_healthy; int* padding_active; int /*<<< orphan*/  io_mutex; int /*<<< orphan*/  poll_work_obj; int /*<<< orphan*/  link_stat_timer; TYPE_3__* conf; int /*<<< orphan*/ * busy_urbs; TYPE_2__* clear_work; int /*<<< orphan*/ * channel_lock; TYPE_1__* usb_device; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
struct TYPE_6__ {scalar_t__ data_type; } ;
struct TYPE_5__ {int /*<<< orphan*/  ws; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ECHRNG ; 
 int EIO ; 
 scalar_t__ MOST_CH_ASYNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct most_dev* FUNC7 (struct most_interface*) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct most_interface *iface, int channel)
{
	struct most_dev *mdev = FUNC7(iface);
	unsigned long flags;
	spinlock_t *lock; /* temp. lock */

	if (FUNC8(!iface)) {
		FUNC2(&mdev->usb_device->dev, "Poison: Bad interface.\n");
		return -EIO;
	}
	if (FUNC8(channel < 0 || channel >= iface->num_channels)) {
		FUNC2(&mdev->usb_device->dev, "Channel ID out of range.\n");
		return -ECHRNG;
	}

	lock = mdev->channel_lock + channel;
	FUNC5(lock, flags);
	mdev->is_channel_healthy[channel] = false;
	FUNC6(lock, flags);

	FUNC0(&mdev->clear_work[channel].ws);

	FUNC3(&mdev->io_mutex);
	FUNC9(&mdev->busy_urbs[channel]);
	if (mdev->padding_active[channel])
		mdev->padding_active[channel] = false;

	if (mdev->conf[channel].data_type == MOST_CH_ASYNC) {
		FUNC1(&mdev->link_stat_timer);
		FUNC0(&mdev->poll_work_obj);
	}
	FUNC4(&mdev->io_mutex);
	return 0;
}