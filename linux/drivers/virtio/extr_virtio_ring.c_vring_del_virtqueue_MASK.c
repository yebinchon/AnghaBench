#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  desc; } ;
struct TYPE_10__ {struct vring_virtqueue* desc_state; int /*<<< orphan*/  queue_dma_addr; TYPE_4__ vring; int /*<<< orphan*/  queue_size_in_bytes; } ;
struct TYPE_8__ {int /*<<< orphan*/  vdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  device; int /*<<< orphan*/  driver; int /*<<< orphan*/  desc; } ;
struct TYPE_7__ {struct vring_virtqueue* desc_extra; struct vring_virtqueue* desc_state; int /*<<< orphan*/  device_event_dma_addr; TYPE_1__ vring; int /*<<< orphan*/  event_size_in_bytes; int /*<<< orphan*/  driver_event_dma_addr; int /*<<< orphan*/  ring_dma_addr; int /*<<< orphan*/  ring_size_in_bytes; } ;
struct vring_virtqueue {TYPE_5__ split; TYPE_3__ vq; TYPE_2__ packed; scalar_t__ packed_ring; scalar_t__ we_own_ring; } ;
struct virtqueue {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vring_virtqueue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct vring_virtqueue* FUNC2 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct virtqueue *_vq)
{
	struct vring_virtqueue *vq = FUNC2(_vq);

	if (vq->we_own_ring) {
		if (vq->packed_ring) {
			FUNC3(vq->vq.vdev,
					 vq->packed.ring_size_in_bytes,
					 vq->packed.vring.desc,
					 vq->packed.ring_dma_addr);

			FUNC3(vq->vq.vdev,
					 vq->packed.event_size_in_bytes,
					 vq->packed.vring.driver,
					 vq->packed.driver_event_dma_addr);

			FUNC3(vq->vq.vdev,
					 vq->packed.event_size_in_bytes,
					 vq->packed.vring.device,
					 vq->packed.device_event_dma_addr);

			FUNC0(vq->packed.desc_state);
			FUNC0(vq->packed.desc_extra);
		} else {
			FUNC3(vq->vq.vdev,
					 vq->split.queue_size_in_bytes,
					 vq->split.vring.desc,
					 vq->split.queue_dma_addr);

			FUNC0(vq->split.desc_state);
		}
	}
	FUNC1(&_vq->list);
	FUNC0(vq);
}