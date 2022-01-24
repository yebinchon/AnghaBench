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
struct vb2_queue {scalar_t__ owner; } ;
struct file {scalar_t__ private_data; } ;
struct TYPE_2__ {struct video_device* vfd; } ;
struct capture_priv {int /*<<< orphan*/  mutex; struct vb2_queue q; TYPE_1__ vdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vb2_queue*) ; 
 struct capture_priv* FUNC5 (struct file*) ; 

__attribute__((used)) static int FUNC6(struct file *file)
{
	struct capture_priv *priv = FUNC5(file);
	struct video_device *vfd = priv->vdev.vfd;
	struct vb2_queue *vq = &priv->q;

	FUNC0(&priv->mutex);

	if (file->private_data == vq->owner) {
		FUNC4(vq);
		vq->owner = NULL;
	}

	FUNC3(&vfd->entity, 0);

	FUNC2(file);
	FUNC1(&priv->mutex);
	return 0;
}