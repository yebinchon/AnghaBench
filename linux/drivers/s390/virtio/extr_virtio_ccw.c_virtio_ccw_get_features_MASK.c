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
typedef  int u64 ;
struct virtio_feature_desc {int index; int count; int /*<<< orphan*/  features; void* cda; scalar_t__ flags; void* cmd_code; } ;
struct virtio_device {int dummy; } ;
struct virtio_ccw_device {scalar_t__ revision; int /*<<< orphan*/  cdev; } ;
struct ccw1 {int index; int count; int /*<<< orphan*/  features; void* cda; scalar_t__ flags; void* cmd_code; } ;
typedef  void* __u32 ;

/* Variables and functions */
 void* CCW_CMD_READ_FEAT ; 
 int /*<<< orphan*/  VIRTIO_CCW_DOING_READ_FEAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct virtio_feature_desc*,int) ; 
 struct virtio_feature_desc* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct virtio_ccw_device*,struct virtio_feature_desc*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct virtio_ccw_device* FUNC4 (struct virtio_device*) ; 

__attribute__((used)) static u64 FUNC5(struct virtio_device *vdev)
{
	struct virtio_ccw_device *vcdev = FUNC4(vdev);
	struct virtio_feature_desc *features;
	int ret;
	u64 rc;
	struct ccw1 *ccw;

	ccw = FUNC1(vcdev->cdev, sizeof(*ccw));
	if (!ccw)
		return 0;

	features = FUNC1(vcdev->cdev, sizeof(*features));
	if (!features) {
		rc = 0;
		goto out_free;
	}
	/* Read the feature bits from the host. */
	features->index = 0;
	ccw->cmd_code = CCW_CMD_READ_FEAT;
	ccw->flags = 0;
	ccw->count = sizeof(*features);
	ccw->cda = (__u32)(unsigned long)features;
	ret = FUNC2(vcdev, ccw, VIRTIO_CCW_DOING_READ_FEAT);
	if (ret) {
		rc = 0;
		goto out_free;
	}

	rc = FUNC3(features->features);

	if (vcdev->revision == 0)
		goto out_free;

	/* Read second half of the feature bits from the host. */
	features->index = 1;
	ccw->cmd_code = CCW_CMD_READ_FEAT;
	ccw->flags = 0;
	ccw->count = sizeof(*features);
	ccw->cda = (__u32)(unsigned long)features;
	ret = FUNC2(vcdev, ccw, VIRTIO_CCW_DOING_READ_FEAT);
	if (ret == 0)
		rc |= (u64)FUNC3(features->features) << 32;

out_free:
	FUNC0(vcdev->cdev, features, sizeof(*features));
	FUNC0(vcdev->cdev, ccw, sizeof(*ccw));
	return rc;
}