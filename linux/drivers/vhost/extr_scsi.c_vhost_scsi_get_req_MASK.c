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
struct vhost_virtqueue {struct vhost_scsi_tpg** private_data; } ;
struct vhost_scsi_tpg {int dummy; } ;
struct vhost_scsi_ctx {int* lunp; size_t* target; int /*<<< orphan*/  out_iter; int /*<<< orphan*/  req_size; int /*<<< orphan*/  req; } ;

/* Variables and functions */
 int EIO ; 
 struct vhost_scsi_tpg* FUNC0 (struct vhost_scsi_tpg*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct vhost_virtqueue*,char*,...) ; 

__attribute__((used)) static int
FUNC4(struct vhost_virtqueue *vq, struct vhost_scsi_ctx *vc,
		   struct vhost_scsi_tpg **tpgp)
{
	int ret = -EIO;

	if (FUNC2(!FUNC1(vc->req, vc->req_size,
					  &vc->out_iter))) {
		FUNC3(vq, "Faulted on copy_from_iter_full\n");
	} else if (FUNC2(*vc->lunp != 1)) {
		/* virtio-scsi spec requires byte 0 of the lun to be 1 */
		FUNC3(vq, "Illegal virtio-scsi lun: %u\n", *vc->lunp);
	} else {
		struct vhost_scsi_tpg **vs_tpg, *tpg;

		vs_tpg = vq->private_data;	/* validated at handler entry */

		tpg = FUNC0(vs_tpg[*vc->target]);
		if (FUNC2(!tpg)) {
			FUNC3(vq, "Target 0x%x does not exist\n", *vc->target);
		} else {
			if (tpgp)
				*tpgp = tpg;
			ret = 0;
		}
	}

	return ret;
}