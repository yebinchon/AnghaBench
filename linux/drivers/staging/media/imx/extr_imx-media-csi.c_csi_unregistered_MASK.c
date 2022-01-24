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
struct csi_priv {scalar_t__ csi; scalar_t__ fim; int /*<<< orphan*/  vdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct csi_priv* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static void FUNC4(struct v4l2_subdev *sd)
{
	struct csi_priv *priv = FUNC3(sd);

	FUNC0(priv->vdev);

	if (priv->fim)
		FUNC1(priv->fim);

	if (priv->csi)
		FUNC2(priv->csi);
}