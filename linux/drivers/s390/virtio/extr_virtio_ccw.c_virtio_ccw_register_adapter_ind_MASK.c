#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct virtqueue {int dummy; } ;
struct virtio_thinint_area {unsigned long summary_indicator; int /*<<< orphan*/  isc; int /*<<< orphan*/  indicator; int /*<<< orphan*/  bit_nr; } ;
struct virtio_ccw_device {TYPE_1__* cdev; struct airq_info* airq_info; } ;
struct ccw1 {int count; scalar_t__ cda; int /*<<< orphan*/  flags; int /*<<< orphan*/  cmd_code; } ;
struct airq_info {int dummy; } ;
typedef  scalar_t__ __u32 ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCW_CMD_SET_IND_ADAPTER ; 
 int /*<<< orphan*/  CCW_FLAG_SLI ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  VIRTIO_AIRQ_ISC ; 
 int /*<<< orphan*/  VIRTIO_CCW_DOING_SET_IND_ADAPTER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct virtio_thinint_area*,int) ; 
 struct virtio_thinint_area* FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (struct virtio_ccw_device*,struct ccw1*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct virtqueue**,int,int /*<<< orphan*/ *,struct airq_info**) ; 
 scalar_t__ FUNC5 (struct airq_info*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct virtio_ccw_device*) ; 
 scalar_t__ virtio_ccw_use_airq ; 

__attribute__((used)) static int FUNC8(struct virtio_ccw_device *vcdev,
					   struct virtqueue *vqs[], int nvqs,
					   struct ccw1 *ccw)
{
	int ret;
	struct virtio_thinint_area *thinint_area = NULL;
	struct airq_info *info;

	thinint_area = FUNC1(vcdev->cdev,
					     sizeof(*thinint_area));
	if (!thinint_area) {
		ret = -ENOMEM;
		goto out;
	}
	/* Try to get an indicator. */
	thinint_area->indicator = FUNC4(vqs, nvqs,
						     &thinint_area->bit_nr,
						     &vcdev->airq_info);
	if (!thinint_area->indicator) {
		ret = -ENOSPC;
		goto out;
	}
	info = vcdev->airq_info;
	thinint_area->summary_indicator =
		(unsigned long) FUNC5(info);
	thinint_area->isc = VIRTIO_AIRQ_ISC;
	ccw->cmd_code = CCW_CMD_SET_IND_ADAPTER;
	ccw->flags = CCW_FLAG_SLI;
	ccw->count = sizeof(*thinint_area);
	ccw->cda = (__u32)(unsigned long)thinint_area;
	ret = FUNC2(vcdev, ccw, VIRTIO_CCW_DOING_SET_IND_ADAPTER);
	if (ret) {
		if (ret == -EOPNOTSUPP) {
			/*
			 * The host does not support adapter interrupts
			 * for virtio-ccw, stop trying.
			 */
			virtio_ccw_use_airq = 0;
			FUNC6("Adapter interrupts unsupported on host\n");
		} else
			FUNC3(&vcdev->cdev->dev,
				 "enabling adapter interrupts = %d\n", ret);
		FUNC7(vcdev);
	}
out:
	FUNC0(vcdev->cdev, thinint_area, sizeof(*thinint_area));
	return ret;
}