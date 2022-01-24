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
struct most_video_dev {int /*<<< orphan*/  wait_data; } ;
struct file {struct comp_fh* private_data; } ;
struct comp_fh {struct most_video_dev* mdev; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLRDNORM ; 
 scalar_t__ FUNC0 (struct most_video_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t FUNC2(struct file *filp, poll_table *wait)
{
	struct comp_fh *fh = filp->private_data;
	struct most_video_dev *mdev = fh->mdev;
	__poll_t mask = 0;

	/* only wait if no data is available */
	if (!FUNC0(mdev))
		FUNC1(filp, &mdev->wait_data, wait);
	if (FUNC0(mdev))
		mask |= EPOLLIN | EPOLLRDNORM;

	return mask;
}