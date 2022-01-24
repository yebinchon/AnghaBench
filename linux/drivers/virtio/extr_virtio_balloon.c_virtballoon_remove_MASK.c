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
struct virtio_device {struct virtio_balloon* priv; } ;
struct TYPE_2__ {scalar_t__ inode; } ;
struct virtio_balloon {int stop_update; TYPE_1__ vb_dev_info; int /*<<< orphan*/  balloon_wq; int /*<<< orphan*/  report_free_page_work; int /*<<< orphan*/  update_balloon_stats_work; int /*<<< orphan*/  update_balloon_size_work; int /*<<< orphan*/  stop_update_lock; struct virtio_device* vdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIRTIO_BALLOON_F_DEFLATE_ON_OOM ; 
 int /*<<< orphan*/  VIRTIO_BALLOON_F_FREE_PAGE_HINT ; 
 int /*<<< orphan*/  balloon_mnt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct virtio_balloon*) ; 
 int /*<<< orphan*/  FUNC5 (struct virtio_balloon*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct virtio_balloon*) ; 
 scalar_t__ FUNC9 (struct virtio_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct virtio_device *vdev)
{
	struct virtio_balloon *vb = vdev->priv;

	if (FUNC9(vb->vdev, VIRTIO_BALLOON_F_DEFLATE_ON_OOM))
		FUNC8(vb);
	FUNC6(&vb->stop_update_lock);
	vb->stop_update = true;
	FUNC7(&vb->stop_update_lock);
	FUNC0(&vb->update_balloon_size_work);
	FUNC0(&vb->update_balloon_stats_work);

	if (FUNC9(vdev, VIRTIO_BALLOON_F_FREE_PAGE_HINT)) {
		FUNC0(&vb->report_free_page_work);
		FUNC1(vb->balloon_wq);
	}

	FUNC5(vb);
#ifdef CONFIG_BALLOON_COMPACTION
	if (vb->vb_dev_info.inode)
		iput(vb->vb_dev_info.inode);

	kern_unmount(balloon_mnt);
#endif
	FUNC4(vb);
}