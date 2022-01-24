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
struct vdic_priv {int /*<<< orphan*/  ctrl_hdlr; } ;
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct vdic_priv* FUNC1 (struct v4l2_subdev*) ; 

__attribute__((used)) static void FUNC2(struct v4l2_subdev *sd)
{
	struct vdic_priv *priv = FUNC1(sd);

	FUNC0(&priv->ctrl_hdlr);
}