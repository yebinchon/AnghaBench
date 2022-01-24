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
struct vnic_wq {unsigned int index; struct vnic_dev* vdev; } ;
struct vnic_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RES_TYPE_WQ ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct vnic_wq*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnic_wq*) ; 
 int FUNC3 (struct vnic_wq*) ; 
 int FUNC4 (struct vnic_dev*,struct vnic_wq*,unsigned int,unsigned int,unsigned int) ; 
 int FUNC5 (struct vnic_dev*,struct vnic_wq*,unsigned int,int /*<<< orphan*/ ) ; 

int FUNC6(struct vnic_dev *vdev, struct vnic_wq *wq,
	unsigned int index, unsigned int desc_count, unsigned int desc_size)
{
	int err;

	wq->index = index;
	wq->vdev = vdev;

	err = FUNC5(vdev, wq, index, RES_TYPE_WQ);
	if (err) {
		FUNC0("Failed to hook WQ[%d] resource\n", index);

		return err;
	}

	FUNC1(wq);

	err = FUNC4(vdev, wq, index, desc_count, desc_size);
	if (err)
		return err;

	err = FUNC3(wq);
	if (err) {
		FUNC2(wq);

		return err;
	}

	return 0;
}