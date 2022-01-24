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
struct virtqueue {int dummy; } ;
struct virtio_scsi_vq {int /*<<< orphan*/  vq_lock; struct virtqueue* vq; } ;
struct virtio_scsi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC4 (struct virtqueue*) ; 
 void* FUNC5 (struct virtqueue*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (struct virtqueue*) ; 

__attribute__((used)) static void FUNC7(struct virtio_scsi *vscsi,
			     struct virtio_scsi_vq *virtscsi_vq,
			     void (*fn)(struct virtio_scsi *vscsi, void *buf))
{
	void *buf;
	unsigned int len;
	unsigned long flags;
	struct virtqueue *vq = virtscsi_vq->vq;

	FUNC0(&virtscsi_vq->vq_lock, flags);
	do {
		FUNC3(vq);
		while ((buf = FUNC5(vq, &len)) != NULL)
			fn(vscsi, buf);

		if (FUNC2(FUNC6(vq)))
			break;
	} while (!FUNC4(vq));
	FUNC1(&virtscsi_vq->vq_lock, flags);
}