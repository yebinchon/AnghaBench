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
typedef  void* u8 ;
struct virtio_device {int dummy; } ;
struct virtio_ccw_device {int /*<<< orphan*/  cdev; TYPE_1__* dma_area; } ;
struct ccw1 {int count; scalar_t__ cda; scalar_t__ flags; int /*<<< orphan*/  cmd_code; } ;
typedef  int /*<<< orphan*/  status ;
typedef  scalar_t__ __u32 ;
struct TYPE_2__ {void* status; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCW_CMD_WRITE_STATUS ; 
 int /*<<< orphan*/  VIRTIO_CCW_DOING_WRITE_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ccw1*,int) ; 
 struct ccw1* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct virtio_ccw_device*,struct ccw1*,int /*<<< orphan*/ ) ; 
 struct virtio_ccw_device* FUNC3 (struct virtio_device*) ; 

__attribute__((used)) static void FUNC4(struct virtio_device *vdev, u8 status)
{
	struct virtio_ccw_device *vcdev = FUNC3(vdev);
	u8 old_status = vcdev->dma_area->status;
	struct ccw1 *ccw;
	int ret;

	ccw = FUNC1(vcdev->cdev, sizeof(*ccw));
	if (!ccw)
		return;

	/* Write the status to the host. */
	vcdev->dma_area->status = status;
	ccw->cmd_code = CCW_CMD_WRITE_STATUS;
	ccw->flags = 0;
	ccw->count = sizeof(status);
	ccw->cda = (__u32)(unsigned long)&vcdev->dma_area->status;
	ret = FUNC2(vcdev, ccw, VIRTIO_CCW_DOING_WRITE_STATUS);
	/* Write failed? We assume status is unchanged. */
	if (ret)
		vcdev->dma_area->status = old_status;
	FUNC0(vcdev->cdev, ccw, sizeof(*ccw));
}