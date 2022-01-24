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
struct vnic_wq {int /*<<< orphan*/ * ctrl; int /*<<< orphan*/ ** bufs; int /*<<< orphan*/  ring; struct vnic_dev* vdev; } ;
struct vnic_dev {int dummy; } ;

/* Variables and functions */
 unsigned int VNIC_WQ_BUF_BLKS_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct vnic_dev*,int /*<<< orphan*/ *) ; 

void FUNC2(struct vnic_wq *wq)
{
	struct vnic_dev *vdev;
	unsigned int i;

	vdev = wq->vdev;

	FUNC1(vdev, &wq->ring);

	for (i = 0; i < VNIC_WQ_BUF_BLKS_MAX; i++) {
		FUNC0(wq->bufs[i]);
		wq->bufs[i] = NULL;
	}

	wq->ctrl = NULL;

}