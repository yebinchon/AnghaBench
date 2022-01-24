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
typedef  int /*<<< orphan*/  u16 ;
struct virtqueue {int dummy; } ;
struct virtio_pci_vq_info {int /*<<< orphan*/  node; struct virtqueue* vq; } ;
struct virtio_pci_device {struct virtio_pci_vq_info** vqs; int /*<<< orphan*/  lock; int /*<<< orphan*/  virtqueues; struct virtqueue* (* setup_vq ) (struct virtio_pci_device*,struct virtio_pci_vq_info*,unsigned int,void (*) (struct virtqueue*),char const*,int,int /*<<< orphan*/ ) ;} ;
struct virtio_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct virtqueue* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC3 (struct virtio_pci_vq_info*) ; 
 struct virtio_pci_vq_info* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 struct virtqueue* FUNC8 (struct virtio_pci_device*,struct virtio_pci_vq_info*,unsigned int,void (*) (struct virtqueue*),char const*,int,int /*<<< orphan*/ ) ; 
 struct virtio_pci_device* FUNC9 (struct virtio_device*) ; 

__attribute__((used)) static struct virtqueue *FUNC10(struct virtio_device *vdev, unsigned index,
				     void (*callback)(struct virtqueue *vq),
				     const char *name,
				     bool ctx,
				     u16 msix_vec)
{
	struct virtio_pci_device *vp_dev = FUNC9(vdev);
	struct virtio_pci_vq_info *info = FUNC4(sizeof *info, GFP_KERNEL);
	struct virtqueue *vq;
	unsigned long flags;

	/* fill out our structure that represents an active queue */
	if (!info)
		return FUNC0(-ENOMEM);

	vq = vp_dev->setup_vq(vp_dev, info, index, callback, name, ctx,
			      msix_vec);
	if (FUNC2(vq))
		goto out_info;

	info->vq = vq;
	if (callback) {
		FUNC6(&vp_dev->lock, flags);
		FUNC5(&info->node, &vp_dev->virtqueues);
		FUNC7(&vp_dev->lock, flags);
	} else {
		FUNC1(&info->node);
	}

	vp_dev->vqs[index] = info;
	return vq;

out_info:
	FUNC3(info);
	return vq;
}