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
struct v4l2_subdev {int dummy; } ;
struct prp_priv {int dummy; } ;
struct imx_ic_priv {struct prp_priv* task_priv; } ;

/* Variables and functions */
 struct imx_ic_priv* FUNC0 (struct v4l2_subdev*) ; 

__attribute__((used)) static inline struct prp_priv *FUNC1(struct v4l2_subdev *sd)
{
	struct imx_ic_priv *ic_priv = FUNC0(sd);

	return ic_priv->task_priv;
}