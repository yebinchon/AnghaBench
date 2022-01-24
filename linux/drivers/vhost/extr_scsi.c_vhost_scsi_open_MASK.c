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
struct vhost_virtqueue {int /*<<< orphan*/  handle_kick; } ;
struct vhost_scsi {int vs_events_missed; int /*<<< orphan*/  dev; TYPE_1__* vqs; scalar_t__ vs_events_nr; int /*<<< orphan*/  vs_event_work; int /*<<< orphan*/  vs_completion_work; } ;
struct inode {int dummy; } ;
struct file {struct vhost_scsi* private_data; } ;
struct TYPE_2__ {struct vhost_virtqueue vq; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  UIO_MAXIOV ; 
 int VHOST_SCSI_MAX_VQ ; 
 size_t VHOST_SCSI_VQ_CTL ; 
 size_t VHOST_SCSI_VQ_EVT ; 
 int VHOST_SCSI_VQ_IO ; 
 int /*<<< orphan*/  VHOST_SCSI_WEIGHT ; 
 int __GFP_NOWARN ; 
 int __GFP_RETRY_MAYFAIL ; 
 struct vhost_virtqueue** FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vhost_scsi*) ; 
 struct vhost_scsi* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct vhost_virtqueue**,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vhost_scsi_complete_cmd_work ; 
 int /*<<< orphan*/  vhost_scsi_ctl_handle_kick ; 
 int /*<<< orphan*/  vhost_scsi_evt_handle_kick ; 
 int /*<<< orphan*/  vhost_scsi_evt_work ; 
 int /*<<< orphan*/  vhost_scsi_handle_kick ; 
 int /*<<< orphan*/  FUNC4 (struct vhost_scsi*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct vhost_scsi* FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *f)
{
	struct vhost_scsi *vs;
	struct vhost_virtqueue **vqs;
	int r = -ENOMEM, i;

	vs = FUNC2(sizeof(*vs), GFP_KERNEL | __GFP_NOWARN | __GFP_RETRY_MAYFAIL);
	if (!vs) {
		vs = FUNC6(sizeof(*vs));
		if (!vs)
			goto err_vs;
	}

	vqs = FUNC0(VHOST_SCSI_MAX_VQ, sizeof(*vqs), GFP_KERNEL);
	if (!vqs)
		goto err_vqs;

	FUNC5(&vs->vs_completion_work, vhost_scsi_complete_cmd_work);
	FUNC5(&vs->vs_event_work, vhost_scsi_evt_work);

	vs->vs_events_nr = 0;
	vs->vs_events_missed = false;

	vqs[VHOST_SCSI_VQ_CTL] = &vs->vqs[VHOST_SCSI_VQ_CTL].vq;
	vqs[VHOST_SCSI_VQ_EVT] = &vs->vqs[VHOST_SCSI_VQ_EVT].vq;
	vs->vqs[VHOST_SCSI_VQ_CTL].vq.handle_kick = vhost_scsi_ctl_handle_kick;
	vs->vqs[VHOST_SCSI_VQ_EVT].vq.handle_kick = vhost_scsi_evt_handle_kick;
	for (i = VHOST_SCSI_VQ_IO; i < VHOST_SCSI_MAX_VQ; i++) {
		vqs[i] = &vs->vqs[i].vq;
		vs->vqs[i].vq.handle_kick = vhost_scsi_handle_kick;
	}
	FUNC3(&vs->dev, vqs, VHOST_SCSI_MAX_VQ, UIO_MAXIOV,
		       VHOST_SCSI_WEIGHT, 0);

	FUNC4(vs, NULL);

	f->private_data = vs;
	return 0;

err_vqs:
	FUNC1(vs);
err_vs:
	return r;
}