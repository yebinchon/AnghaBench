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
struct most_video_dev {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  list; } ;
struct most_interface {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct most_video_dev*) ; 
 struct most_video_dev* FUNC1 (struct most_interface*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  list_lock ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct most_interface *iface,
				   int channel_idx)
{
	struct most_video_dev *mdev = FUNC1(iface, channel_idx);

	if (!mdev) {
		FUNC3("no such channel is linked\n");
		return -ENOENT;
	}

	FUNC4(&list_lock);
	FUNC2(&mdev->list);
	FUNC5(&list_lock);

	FUNC0(mdev);
	FUNC6(&mdev->v4l2_dev);
	FUNC7(&mdev->v4l2_dev);
	return 0;
}