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
struct vhost_dev {int /*<<< orphan*/  read_list; int /*<<< orphan*/  wait; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLRDNORM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__poll_t FUNC2(struct file *file, struct vhost_dev *dev,
			    poll_table *wait)
{
	__poll_t mask = 0;

	FUNC1(file, &dev->wait, wait);

	if (!FUNC0(&dev->read_list))
		mask |= EPOLLIN | EPOLLRDNORM;

	return mask;
}