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
struct virtqueue {int /*<<< orphan*/  index; struct virtio_ccw_vq_info* priv; } ;
struct virtio_ccw_vq_info {scalar_t__ cookie; TYPE_1__* vq; } ;
struct virtio_ccw_device {int /*<<< orphan*/  cdev; } ;
struct subchannel_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  vdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct subchannel_id*) ; 
 scalar_t__ FUNC1 (struct subchannel_id,int /*<<< orphan*/ ,scalar_t__) ; 
 struct virtio_ccw_device* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct virtqueue *vq)
{
	struct virtio_ccw_vq_info *info = vq->priv;
	struct virtio_ccw_device *vcdev;
	struct subchannel_id schid;

	vcdev = FUNC2(info->vq->vdev);
	FUNC0(vcdev->cdev, &schid);
	info->cookie = FUNC1(schid, vq->index, info->cookie);
	if (info->cookie < 0)
		return false;
	return true;
}