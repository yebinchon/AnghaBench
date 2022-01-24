#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  name; int /*<<< orphan*/  release; } ;
struct most_video_dev {int ch_idx; TYPE_1__ v4l2_dev; int /*<<< orphan*/  list; struct most_interface* iface; int /*<<< orphan*/  pending_mbos; int /*<<< orphan*/  list_lock; int /*<<< orphan*/  access_ref; int /*<<< orphan*/  lock; } ;
struct most_interface {int dummy; } ;
struct most_channel_config {scalar_t__ direction; scalar_t__ data_type; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ MOST_CH_ISOC ; 
 scalar_t__ MOST_CH_RX ; 
 scalar_t__ MOST_CH_SYNC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct most_video_dev*) ; 
 int /*<<< orphan*/  comp_v4l2_dev_release ; 
 struct most_video_dev* FUNC3 (struct most_interface*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct most_video_dev*) ; 
 struct most_video_dev* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  list_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int FUNC15 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  video_devices ; 

__attribute__((used)) static int FUNC16(struct most_interface *iface, int channel_idx,
			      struct most_channel_config *ccfg, char *name,
			      char *args)
{
	int ret;
	struct most_video_dev *mdev = FUNC3(iface, channel_idx);

	if (mdev) {
		FUNC8("channel already linked\n");
		return -EEXIST;
	}

	if (ccfg->direction != MOST_CH_RX) {
		FUNC8("wrong direction, expect rx\n");
		return -EINVAL;
	}

	if (ccfg->data_type != MOST_CH_SYNC &&
	    ccfg->data_type != MOST_CH_ISOC) {
		FUNC8("wrong channel type, expect sync or isoc\n");
		return -EINVAL;
	}

	mdev = FUNC5(sizeof(*mdev), GFP_KERNEL);
	if (!mdev)
		return -ENOMEM;

	FUNC7(&mdev->lock);
	FUNC1(&mdev->access_ref, -1);
	FUNC9(&mdev->list_lock);
	FUNC0(&mdev->pending_mbos);
	mdev->iface = iface;
	mdev->ch_idx = channel_idx;
	mdev->v4l2_dev.release = comp_v4l2_dev_release;

	/* Create the v4l2_device */
	FUNC12(mdev->v4l2_dev.name, name, sizeof(mdev->v4l2_dev.name));
	ret = FUNC15(NULL, &mdev->v4l2_dev);
	if (ret) {
		FUNC8("v4l2_device_register() failed\n");
		FUNC4(mdev);
		return ret;
	}

	ret = FUNC2(mdev);
	if (ret)
		goto err_unreg;

	FUNC10(&list_lock);
	FUNC6(&mdev->list, &video_devices);
	FUNC11(&list_lock);
	return 0;

err_unreg:
	FUNC13(&mdev->v4l2_dev);
	FUNC14(&mdev->v4l2_dev);
	return ret;
}