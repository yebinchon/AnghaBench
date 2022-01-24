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
struct vb2_queue {int dummy; } ;
struct imx_media_video_dev {int dummy; } ;
struct capture_priv {int /*<<< orphan*/  q_lock; struct vb2_queue q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct capture_priv* FUNC2 (struct imx_media_video_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct vb2_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct vb2_queue*) ; 

void FUNC5(struct imx_media_video_dev *vdev)
{
	struct capture_priv *priv = FUNC2(vdev);
	struct vb2_queue *vq = &priv->q;
	unsigned long flags;

	if (!FUNC3(vq))
		return;

	FUNC0(&priv->q_lock, flags);
	FUNC4(vq);
	FUNC1(&priv->q_lock, flags);
}