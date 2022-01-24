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
struct virtqueue {size_t index; int /*<<< orphan*/  vdev; } ;
struct virtio_pci_vq_info {int /*<<< orphan*/  node; } ;
struct virtio_pci_device {int /*<<< orphan*/  (* del_vq ) (struct virtio_pci_vq_info*) ;int /*<<< orphan*/  lock; struct virtio_pci_vq_info** vqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct virtio_pci_vq_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct virtio_pci_vq_info*) ; 
 struct virtio_pci_device* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct virtqueue *vq)
{
	struct virtio_pci_device *vp_dev = FUNC5(vq->vdev);
	struct virtio_pci_vq_info *info = vp_dev->vqs[vq->index];
	unsigned long flags;

	FUNC2(&vp_dev->lock, flags);
	FUNC1(&info->node);
	FUNC3(&vp_dev->lock, flags);

	vp_dev->del_vq(info);
	FUNC0(info);
}