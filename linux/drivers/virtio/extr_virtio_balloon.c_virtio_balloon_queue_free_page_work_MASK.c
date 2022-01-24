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
struct virtio_balloon {int /*<<< orphan*/  report_free_page_work; int /*<<< orphan*/  balloon_wq; int /*<<< orphan*/  config_read_bitmap; int /*<<< orphan*/  vdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIRTIO_BALLOON_CONFIG_READ_CMD_ID ; 
 int /*<<< orphan*/  VIRTIO_BALLOON_F_FREE_PAGE_HINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct virtio_balloon *vb)
{
	if (!FUNC2(vb->vdev, VIRTIO_BALLOON_F_FREE_PAGE_HINT))
		return;

	/* No need to queue the work if the bit was already set. */
	if (FUNC1(VIRTIO_BALLOON_CONFIG_READ_CMD_ID,
			     &vb->config_read_bitmap))
		return;

	FUNC0(vb->balloon_wq, &vb->report_free_page_work);
}