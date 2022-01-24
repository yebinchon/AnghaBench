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
struct vhost_msg_node {int /*<<< orphan*/  node; } ;
struct vhost_dev {int /*<<< orphan*/  wait; int /*<<< orphan*/  iotlb_lock; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLRDNORM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

void FUNC4(struct vhost_dev *dev, struct list_head *head,
		       struct vhost_msg_node *node)
{
	FUNC1(&dev->iotlb_lock);
	FUNC0(&node->node, head);
	FUNC2(&dev->iotlb_lock);

	FUNC3(&dev->wait, EPOLLIN | EPOLLRDNORM);
}