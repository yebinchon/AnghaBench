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
struct video_device {int /*<<< orphan*/  entity; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct video_device* vfd; } ;
struct capture_priv {int /*<<< orphan*/  mutex; int /*<<< orphan*/  src_sd; TYPE_1__ vdev; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct file*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 struct capture_priv* FUNC6 (struct file*) ; 

__attribute__((used)) static int FUNC7(struct file *file)
{
	struct capture_priv *priv = FUNC6(file);
	struct video_device *vfd = priv->vdev.vfd;
	int ret;

	if (FUNC0(&priv->mutex))
		return -ERESTARTSYS;

	ret = FUNC3(file);
	if (ret)
		FUNC2(priv->src_sd, "v4l2_fh_open failed\n");

	ret = FUNC5(&vfd->entity, 1);
	if (ret)
		FUNC4(file);

	FUNC1(&priv->mutex);
	return ret;
}