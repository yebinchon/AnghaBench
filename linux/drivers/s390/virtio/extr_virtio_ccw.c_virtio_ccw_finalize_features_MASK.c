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
typedef  int u32 ;
struct virtio_feature_desc {int index; int count; void* cda; scalar_t__ flags; void* cmd_code; void* features; } ;
struct virtio_device {int features; int /*<<< orphan*/  dev; } ;
struct virtio_ccw_device {int revision; int /*<<< orphan*/  cdev; } ;
struct ccw1 {int index; int count; void* cda; scalar_t__ flags; void* cmd_code; void* features; } ;
typedef  void* __u32 ;

/* Variables and functions */
 void* CCW_CMD_WRITE_FEAT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  VIRTIO_CCW_DOING_WRITE_FEAT ; 
 int /*<<< orphan*/  VIRTIO_F_VERSION_1 ; 
 int /*<<< orphan*/  FUNC0 (struct virtio_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct virtio_feature_desc*,int) ; 
 struct virtio_feature_desc* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct virtio_ccw_device*,struct virtio_feature_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct virtio_device*) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 struct virtio_ccw_device* FUNC7 (struct virtio_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct virtio_device*) ; 

__attribute__((used)) static int FUNC9(struct virtio_device *vdev)
{
	struct virtio_ccw_device *vcdev = FUNC7(vdev);
	struct virtio_feature_desc *features;
	struct ccw1 *ccw;
	int ret;

	if (vcdev->revision >= 1 &&
	    !FUNC0(vdev, VIRTIO_F_VERSION_1)) {
		FUNC6(&vdev->dev, "virtio: device uses revision 1 "
			"but does not have VIRTIO_F_VERSION_1\n");
		return -EINVAL;
	}

	ccw = FUNC2(vcdev->cdev, sizeof(*ccw));
	if (!ccw)
		return -ENOMEM;

	features = FUNC2(vcdev->cdev, sizeof(*features));
	if (!features) {
		ret = -ENOMEM;
		goto out_free;
	}
	/* Give virtio_ring a chance to accept features. */
	FUNC8(vdev);

	/* Give virtio_ccw a chance to accept features. */
	FUNC4(vdev);

	features->index = 0;
	features->features = FUNC5((u32)vdev->features);
	/* Write the first half of the feature bits to the host. */
	ccw->cmd_code = CCW_CMD_WRITE_FEAT;
	ccw->flags = 0;
	ccw->count = sizeof(*features);
	ccw->cda = (__u32)(unsigned long)features;
	ret = FUNC3(vcdev, ccw, VIRTIO_CCW_DOING_WRITE_FEAT);
	if (ret)
		goto out_free;

	if (vcdev->revision == 0)
		goto out_free;

	features->index = 1;
	features->features = FUNC5(vdev->features >> 32);
	/* Write the second half of the feature bits to the host. */
	ccw->cmd_code = CCW_CMD_WRITE_FEAT;
	ccw->flags = 0;
	ccw->count = sizeof(*features);
	ccw->cda = (__u32)(unsigned long)features;
	ret = FUNC3(vcdev, ccw, VIRTIO_CCW_DOING_WRITE_FEAT);

out_free:
	FUNC1(vcdev->cdev, features, sizeof(*features));
	FUNC1(vcdev->cdev, ccw, sizeof(*ccw));

	return ret;
}