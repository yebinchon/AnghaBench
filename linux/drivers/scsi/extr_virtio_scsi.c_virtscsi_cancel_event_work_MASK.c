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
struct TYPE_3__ {int /*<<< orphan*/  vq_lock; } ;
struct virtio_scsi {int stop_events; TYPE_2__* event_list; TYPE_1__ event_vq; } ;
struct TYPE_4__ {int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int VIRTIO_SCSI_EVENT_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct virtio_scsi *vscsi)
{
	int i;

	/* Stop scheduling work before calling cancel_work_sync.  */
	FUNC1(&vscsi->event_vq.vq_lock);
	vscsi->stop_events = true;
	FUNC2(&vscsi->event_vq.vq_lock);

	for (i = 0; i < VIRTIO_SCSI_EVENT_LEN; i++)
		FUNC0(&vscsi->event_list[i].work);
}