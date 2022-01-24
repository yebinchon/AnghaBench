#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vhost_iotlb_msg {scalar_t__ type; } ;
struct TYPE_4__ {struct vhost_iotlb_msg iotlb; } ;
struct TYPE_3__ {int type; struct vhost_iotlb_msg iotlb; } ;
struct vhost_msg_node {TYPE_2__ msg_v2; TYPE_1__ msg; } ;
struct vhost_msg {int dummy; } ;
struct vhost_dev {int /*<<< orphan*/  pending_list; int /*<<< orphan*/  wait; int /*<<< orphan*/  iotlb; int /*<<< orphan*/  read_list; } ;
struct iov_iter {int dummy; } ;
typedef  unsigned int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int EAGAIN ; 
 unsigned int EBADFD ; 
 unsigned int ERESTARTSYS ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 scalar_t__ VHOST_IOTLB_MISS ; 
#define  VHOST_IOTLB_MSG 129 
#define  VHOST_IOTLB_MSG_V2 128 
 unsigned int FUNC2 (void*,unsigned int,struct iov_iter*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC5 (struct vhost_msg_node*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 struct vhost_msg_node* FUNC9 (struct vhost_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct vhost_dev*,int /*<<< orphan*/ *,struct vhost_msg_node*) ; 
 int /*<<< orphan*/  wait ; 

ssize_t FUNC11(struct vhost_dev *dev, struct iov_iter *to,
			    int noblock)
{
	FUNC1(wait);
	struct vhost_msg_node *node;
	ssize_t ret = 0;
	unsigned size = sizeof(struct vhost_msg);

	if (FUNC4(to) < size)
		return 0;

	while (1) {
		if (!noblock)
			FUNC6(&dev->wait, &wait,
					TASK_INTERRUPTIBLE);

		node = FUNC9(dev, &dev->read_list);
		if (node)
			break;
		if (noblock) {
			ret = -EAGAIN;
			break;
		}
		if (FUNC8(current)) {
			ret = -ERESTARTSYS;
			break;
		}
		if (!dev->iotlb) {
			ret = -EBADFD;
			break;
		}

		FUNC7();
	}

	if (!noblock)
		FUNC3(&dev->wait, &wait);

	if (node) {
		struct vhost_iotlb_msg *msg;
		void *start = &node->msg;

		switch (node->msg.type) {
		case VHOST_IOTLB_MSG:
			size = sizeof(node->msg);
			msg = &node->msg.iotlb;
			break;
		case VHOST_IOTLB_MSG_V2:
			size = sizeof(node->msg_v2);
			msg = &node->msg_v2.iotlb;
			break;
		default:
			FUNC0();
			break;
		}

		ret = FUNC2(start, size, to);
		if (ret != size || msg->type != VHOST_IOTLB_MISS) {
			FUNC5(node);
			return ret;
		}
		FUNC10(dev, &dev->pending_list, node);
	}

	return ret;
}