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
struct vnic_wq {struct vnic_dev* vdev; scalar_t__ index; } ;
struct vnic_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RES_TYPE_DEVCMD2 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct vnic_dev*,struct vnic_wq*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct vnic_wq*) ; 
 int FUNC3 (struct vnic_dev*,struct vnic_wq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct vnic_dev *vdev, struct vnic_wq *wq,
		unsigned int desc_count, unsigned int desc_size)
{
	int err;

	wq->index = 0;
	wq->vdev = vdev;

	err = FUNC3(vdev, wq, 0, RES_TYPE_DEVCMD2);
	if (err) {
		FUNC0("Failed to get devcmd2 resource\n");
		return err;
	}
	FUNC2(wq);

	err = FUNC1(vdev, wq, desc_count, desc_size);
	if (err)
		return err;
	return 0;
}