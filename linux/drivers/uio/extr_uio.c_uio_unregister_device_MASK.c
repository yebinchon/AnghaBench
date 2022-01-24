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
struct uio_info {scalar_t__ irq; struct uio_device* uio_dev; } ;
struct uio_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  async_queue; int /*<<< orphan*/  wait; int /*<<< orphan*/  info_lock; int /*<<< orphan*/ * info; } ;

/* Variables and functions */
 int /*<<< orphan*/  POLL_HUP ; 
 int /*<<< orphan*/  SIGIO ; 
 scalar_t__ UIO_IRQ_CUSTOM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct uio_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct uio_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct uio_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct uio_info *info)
{
	struct uio_device *idev;

	if (!info || !info->uio_dev)
		return;

	idev = info->uio_dev;

	FUNC6(idev);

	FUNC3(&idev->info_lock);
	FUNC5(idev);

	if (info->irq && info->irq != UIO_IRQ_CUSTOM)
		FUNC1(info->irq, idev);

	idev->info = NULL;
	FUNC4(&idev->info_lock);

	FUNC7(&idev->wait);
	FUNC2(&idev->async_queue, SIGIO, POLL_HUP);

	FUNC0(&idev->dev);

	return;
}