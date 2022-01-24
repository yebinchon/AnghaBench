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
struct imx_media_video_dev {int /*<<< orphan*/  list; } ;
struct imx_media_dev {int /*<<< orphan*/  mutex; int /*<<< orphan*/  vdev_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct imx_media_dev *imxmd,
				struct imx_media_video_dev *vdev)
{
	FUNC1(&imxmd->mutex);

	FUNC0(&vdev->list, &imxmd->vdev_list);

	FUNC2(&imxmd->mutex);
}