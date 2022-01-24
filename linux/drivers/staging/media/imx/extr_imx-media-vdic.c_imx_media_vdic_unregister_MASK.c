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
struct vdic_priv {int /*<<< orphan*/  lock; } ;
struct v4l2_subdev {int /*<<< orphan*/  entity; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*) ; 
 struct vdic_priv* FUNC3 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*,char*) ; 

int FUNC5(struct v4l2_subdev *sd)
{
	struct vdic_priv *priv = FUNC3(sd);

	FUNC4(sd, "Removing\n");

	FUNC2(sd);
	FUNC1(&priv->lock);
	FUNC0(&sd->entity);

	return 0;
}