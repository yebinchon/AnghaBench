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
struct vhost_work {int dummy; } ;
struct vhost_flush_struct {int /*<<< orphan*/  wait_event; int /*<<< orphan*/  work; } ;
struct vhost_dev {scalar_t__ worker; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vhost_flush_work ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vhost_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct vhost_dev *dev, struct vhost_work *work)
{
	struct vhost_flush_struct flush;

	if (dev->worker) {
		FUNC0(&flush.wait_event);
		FUNC1(&flush.work, vhost_flush_work);

		FUNC2(dev, &flush.work);
		FUNC3(&flush.wait_event);
	}
}