#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vq_callback_t ;
typedef  void* u64 ;
struct virtqueue {struct virtio_ccw_vq_info* priv; } ;
struct virtio_device {int dummy; } ;
struct virtio_ccw_vq_info {int num; TYPE_3__* info_block; int /*<<< orphan*/  node; struct virtqueue* vq; } ;
struct virtio_ccw_device {scalar_t__ revision; TYPE_4__* cdev; int /*<<< orphan*/  lock; int /*<<< orphan*/  virtqueues; } ;
struct ccw1 {int count; scalar_t__ cda; int /*<<< orphan*/  flags; int /*<<< orphan*/  cmd_code; } ;
typedef  void* __u64 ;
typedef  scalar_t__ __u32 ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {int index; int num; void* used; void* avail; void* desc; } ;
struct TYPE_7__ {int index; int num; int /*<<< orphan*/  align; void* queue; } ;
struct TYPE_9__ {TYPE_2__ s; TYPE_1__ l; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCW_CMD_SET_VQ ; 
 int ENOMEM ; 
 struct virtqueue* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KVM_VIRTIO_CCW_RING_ALIGN ; 
 int VIRTIO_CCW_DOING_SET_VQ ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_3__*,int) ; 
 TYPE_3__* FUNC2 (TYPE_4__*,int) ; 
 int FUNC3 (struct virtio_ccw_device*,struct ccw1*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct virtio_ccw_vq_info*) ; 
 struct virtio_ccw_vq_info* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 struct virtio_ccw_device* FUNC10 (struct virtio_device*) ; 
 int /*<<< orphan*/  virtio_ccw_kvm_notify ; 
 int FUNC11 (struct virtio_ccw_device*,struct ccw1*,int) ; 
 scalar_t__ FUNC12 (struct virtqueue*) ; 
 void* FUNC13 (struct virtqueue*) ; 
 scalar_t__ FUNC14 (struct virtqueue*) ; 
 int FUNC15 (struct virtqueue*) ; 
 struct virtqueue* FUNC16 (int,int,int /*<<< orphan*/ ,struct virtio_device*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC17 (struct virtqueue*) ; 

__attribute__((used)) static struct virtqueue *FUNC18(struct virtio_device *vdev,
					     int i, vq_callback_t *callback,
					     const char *name, bool ctx,
					     struct ccw1 *ccw)
{
	struct virtio_ccw_device *vcdev = FUNC10(vdev);
	int err;
	struct virtqueue *vq = NULL;
	struct virtio_ccw_vq_info *info;
	u64 queue;
	unsigned long flags;
	bool may_reduce;

	/* Allocate queue. */
	info = FUNC6(sizeof(struct virtio_ccw_vq_info), GFP_KERNEL);
	if (!info) {
		FUNC4(&vcdev->cdev->dev, "no info\n");
		err = -ENOMEM;
		goto out_err;
	}
	info->info_block = FUNC2(vcdev->cdev,
						 sizeof(*info->info_block));
	if (!info->info_block) {
		FUNC4(&vcdev->cdev->dev, "no info block\n");
		err = -ENOMEM;
		goto out_err;
	}
	info->num = FUNC11(vcdev, ccw, i);
	if (info->num < 0) {
		err = info->num;
		goto out_err;
	}
	may_reduce = vcdev->revision > 0;
	vq = FUNC16(i, info->num, KVM_VIRTIO_CCW_RING_ALIGN,
				    vdev, true, may_reduce, ctx,
				    virtio_ccw_kvm_notify, callback, name);

	if (!vq) {
		/* For now, we fail if we can't get the requested size. */
		FUNC4(&vcdev->cdev->dev, "no vq\n");
		err = -ENOMEM;
		goto out_err;
	}
	/* it may have been reduced */
	info->num = FUNC15(vq);

	/* Register it with the host. */
	queue = FUNC13(vq);
	if (vcdev->revision == 0) {
		info->info_block->l.queue = queue;
		info->info_block->l.align = KVM_VIRTIO_CCW_RING_ALIGN;
		info->info_block->l.index = i;
		info->info_block->l.num = info->num;
		ccw->count = sizeof(info->info_block->l);
	} else {
		info->info_block->s.desc = queue;
		info->info_block->s.index = i;
		info->info_block->s.num = info->num;
		info->info_block->s.avail = (__u64)FUNC12(vq);
		info->info_block->s.used = (__u64)FUNC14(vq);
		ccw->count = sizeof(info->info_block->s);
	}
	ccw->cmd_code = CCW_CMD_SET_VQ;
	ccw->flags = 0;
	ccw->cda = (__u32)(unsigned long)(info->info_block);
	err = FUNC3(vcdev, ccw, VIRTIO_CCW_DOING_SET_VQ | i);
	if (err) {
		FUNC4(&vcdev->cdev->dev, "SET_VQ failed\n");
		goto out_err;
	}

	info->vq = vq;
	vq->priv = info;

	/* Save it to our list. */
	FUNC8(&vcdev->lock, flags);
	FUNC7(&info->node, &vcdev->virtqueues);
	FUNC9(&vcdev->lock, flags);

	return vq;

out_err:
	if (vq)
		FUNC17(vq);
	if (info) {
		FUNC1(vcdev->cdev, info->info_block,
				    sizeof(*info->info_block));
	}
	FUNC5(info);
	return FUNC0(err);
}