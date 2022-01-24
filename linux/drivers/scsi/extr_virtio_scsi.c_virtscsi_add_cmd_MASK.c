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
struct virtio_scsi_vq {int /*<<< orphan*/  vq; int /*<<< orphan*/  vq_lock; } ;
struct virtio_scsi_cmd {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct virtio_scsi_cmd*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct virtio_scsi_vq *vq,
			     struct virtio_scsi_cmd *cmd,
			     size_t req_size, size_t resp_size,
			     bool kick)
{
	unsigned long flags;
	int err;
	bool needs_kick = false;

	FUNC1(&vq->vq_lock, flags);
	err = FUNC0(vq->vq, cmd, req_size, resp_size);
	if (!err && kick)
		needs_kick = FUNC3(vq->vq);

	FUNC2(&vq->vq_lock, flags);

	if (needs_kick)
		FUNC4(vq->vq);
	return err;
}