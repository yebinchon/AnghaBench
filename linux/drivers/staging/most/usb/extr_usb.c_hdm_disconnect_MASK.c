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
struct usb_interface {int dummy; } ;
struct most_dev {struct most_dev* ep_address; struct most_dev* conf; struct most_dev* cap; struct most_dev* busy_urbs; int /*<<< orphan*/  iface; TYPE_1__* dci; int /*<<< orphan*/  poll_work_obj; int /*<<< orphan*/  link_stat_timer; int /*<<< orphan*/  io_mutex; int /*<<< orphan*/ * usb_device; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct most_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct most_dev* FUNC7 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct usb_interface *interface)
{
	struct most_dev *mdev = FUNC7(interface);

	FUNC5(&mdev->io_mutex);
	FUNC8(interface, NULL);
	mdev->usb_device = NULL;
	FUNC6(&mdev->io_mutex);

	FUNC1(&mdev->link_stat_timer);
	FUNC0(&mdev->poll_work_obj);

	FUNC2(&mdev->dci->dev);
	FUNC4(&mdev->iface);

	FUNC3(mdev->busy_urbs);
	FUNC3(mdev->cap);
	FUNC3(mdev->conf);
	FUNC3(mdev->ep_address);
	FUNC3(mdev);
}