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
struct virtio_scsi_event_node {int /*<<< orphan*/  event; int /*<<< orphan*/  work; } ;
struct virtio_scsi_event {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  vq_lock; int /*<<< orphan*/  vq; } ;
struct virtio_scsi {TYPE_1__ event_vq; } ;
struct scatterlist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct scatterlist*,int,struct virtio_scsi_event_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  virtscsi_handle_event ; 

__attribute__((used)) static int FUNC6(struct virtio_scsi *vscsi,
			       struct virtio_scsi_event_node *event_node)
{
	int err;
	struct scatterlist sg;
	unsigned long flags;

	FUNC0(&event_node->work, virtscsi_handle_event);
	FUNC1(&sg, &event_node->event, sizeof(struct virtio_scsi_event));

	FUNC2(&vscsi->event_vq.vq_lock, flags);

	err = FUNC4(vscsi->event_vq.vq, &sg, 1, event_node,
				  GFP_ATOMIC);
	if (!err)
		FUNC5(vscsi->event_vq.vq);

	FUNC3(&vscsi->event_vq.vq_lock, flags);

	return err;
}