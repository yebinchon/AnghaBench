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
struct virtqueue {int /*<<< orphan*/  vdev; } ;
struct virtio_scsi {int /*<<< orphan*/  event_vq; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 struct virtio_scsi* FUNC0 (struct Scsi_Host*) ; 
 struct Scsi_Host* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  virtscsi_complete_event ; 
 int /*<<< orphan*/  FUNC2 (struct virtio_scsi*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct virtqueue *vq)
{
	struct Scsi_Host *sh = FUNC1(vq->vdev);
	struct virtio_scsi *vscsi = FUNC0(sh);

	FUNC2(vscsi, &vscsi->event_vq, virtscsi_complete_event);
}