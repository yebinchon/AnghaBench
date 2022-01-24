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
struct video_device {int vfl_type; } ;
struct most_video_dev {int /*<<< orphan*/  access_ref; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  ch_idx; int /*<<< orphan*/  iface; } ;
struct file {struct comp_fh* private_data; } ;
struct comp_fh {int /*<<< orphan*/  fh; struct most_video_dev* mdev; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  VFL_TYPE_GRABBER 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  comp ; 
 int /*<<< orphan*/  FUNC2 (struct comp_fh*) ; 
 struct comp_fh* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct video_device*) ; 
 struct video_device* FUNC10 (struct file*) ; 
 struct most_video_dev* FUNC11 (struct file*) ; 

__attribute__((used)) static int FUNC12(struct file *filp)
{
	int ret;
	struct video_device *vdev = FUNC10(filp);
	struct most_video_dev *mdev = FUNC11(filp);
	struct comp_fh *fh;

	switch (vdev->vfl_type) {
	case VFL_TYPE_GRABBER:
		break;
	default:
		return -EINVAL;
	}

	fh = FUNC3(sizeof(*fh), GFP_KERNEL);
	if (!fh)
		return -ENOMEM;

	if (!FUNC1(&mdev->access_ref)) {
		FUNC5(&mdev->v4l2_dev, "too many clients\n");
		ret = -EBUSY;
		goto err_dec;
	}

	fh->mdev = mdev;
	FUNC9(&fh->fh, vdev);
	filp->private_data = fh;

	FUNC6(&fh->fh);

	ret = FUNC4(mdev->iface, mdev->ch_idx, &comp);
	if (ret) {
		FUNC5(&mdev->v4l2_dev, "most_start_channel() failed\n");
		goto err_rm;
	}

	return 0;

err_rm:
	FUNC7(&fh->fh);
	FUNC8(&fh->fh);

err_dec:
	FUNC0(&mdev->access_ref);
	FUNC2(fh);
	return ret;
}