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
struct virtqueue {struct rproc_vring* priv; } ;
struct virtio_device {int dummy; } ;
struct rproc_vring {int len; struct virtqueue* vq; int /*<<< orphan*/  align; int /*<<< orphan*/  notifyid; } ;
struct rproc_vdev {int rsc_offset; struct rproc_vring* vring; int /*<<< orphan*/  index; } ;
struct rproc_mem_entry {int /*<<< orphan*/  da; void* va; } ;
struct device {int dummy; } ;
struct rproc {scalar_t__ table_ptr; struct device dev; } ;
struct fw_rsc_vdev {TYPE_1__* vring; } ;
struct TYPE_2__ {int /*<<< orphan*/  da; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct rproc_vring*) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct virtqueue* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,unsigned int,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int) ; 
 struct rproc_mem_entry* FUNC5 (struct rproc*,char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct rproc_vring*) ; 
 int /*<<< orphan*/  rproc_virtio_notify ; 
 struct rproc* FUNC7 (struct virtio_device*) ; 
 struct rproc_vdev* FUNC8 (struct virtio_device*) ; 
 struct virtqueue* FUNC9 (unsigned int,int,int /*<<< orphan*/ ,struct virtio_device*,int,int,void*,int /*<<< orphan*/ ,void (*) (struct virtqueue*),char const*) ; 
 int FUNC10 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct virtqueue *FUNC11(struct virtio_device *vdev,
				    unsigned int id,
				    void (*callback)(struct virtqueue *vq),
				    const char *name, bool ctx)
{
	struct rproc_vdev *rvdev = FUNC8(vdev);
	struct rproc *rproc = FUNC7(vdev);
	struct device *dev = &rproc->dev;
	struct rproc_mem_entry *mem;
	struct rproc_vring *rvring;
	struct fw_rsc_vdev *rsc;
	struct virtqueue *vq;
	void *addr;
	int len, size;

	/* we're temporarily limited to two virtqueues per rvdev */
	if (id >= FUNC0(rvdev->vring))
		return FUNC1(-EINVAL);

	if (!name)
		return NULL;

	/* Search allocated memory region by name */
	mem = FUNC5(rproc, "vdev%dvring%d", rvdev->index,
					  id);
	if (!mem || !mem->va)
		return FUNC1(-ENOMEM);

	rvring = &rvdev->vring[id];
	addr = mem->va;
	len = rvring->len;

	/* zero vring */
	size = FUNC10(len, rvring->align);
	FUNC4(addr, 0, size);

	FUNC2(dev, "vring%d: va %pK qsz %d notifyid %d\n",
		id, addr, len, rvring->notifyid);

	/*
	 * Create the new vq, and tell virtio we're not interested in
	 * the 'weak' smp barriers, since we're talking with a real device.
	 */
	vq = FUNC9(id, len, rvring->align, vdev, false, ctx,
				 addr, rproc_virtio_notify, callback, name);
	if (!vq) {
		FUNC3(dev, "vring_new_virtqueue %s failed\n", name);
		FUNC6(rvring);
		return FUNC1(-ENOMEM);
	}

	rvring->vq = vq;
	vq->priv = rvring;

	/* Update vring in resource table */
	rsc = (void *)rproc->table_ptr + rvdev->rsc_offset;
	rsc->vring[id].da = mem->da;

	return vq;
}