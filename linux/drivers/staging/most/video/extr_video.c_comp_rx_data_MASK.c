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
struct most_video_dev {int /*<<< orphan*/  wait_data; int /*<<< orphan*/  list_lock; int /*<<< orphan*/  pending_mbos; int /*<<< orphan*/  mute; } ;
struct mbo {int /*<<< orphan*/  list; int /*<<< orphan*/  hdm_channel_id; int /*<<< orphan*/  ifp; } ;

/* Variables and functions */
 int EIO ; 
 struct most_video_dev* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct mbo *mbo)
{
	unsigned long flags;
	struct most_video_dev *mdev =
		FUNC0(mbo->ifp, mbo->hdm_channel_id);

	if (!mdev)
		return -EIO;

	FUNC2(&mdev->list_lock, flags);
	if (FUNC4(mdev->mute)) {
		FUNC3(&mdev->list_lock, flags);
		return -EIO;
	}

	FUNC1(&mbo->list, &mdev->pending_mbos);
	FUNC3(&mdev->list_lock, flags);
	FUNC5(&mdev->wait_data);
	return 0;
}