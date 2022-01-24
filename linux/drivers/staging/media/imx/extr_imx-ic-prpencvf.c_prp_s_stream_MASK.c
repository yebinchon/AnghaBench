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
struct v4l2_subdev {int /*<<< orphan*/  name; } ;
struct prp_priv {int stream_count; int /*<<< orphan*/  lock; int /*<<< orphan*/  sink; int /*<<< orphan*/  src_sd; } ;
struct imx_ic_priv {int /*<<< orphan*/  ipu_dev; struct prp_priv* task_priv; } ;

/* Variables and functions */
 int EPIPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct prp_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct prp_priv*) ; 
 struct imx_ic_priv* FUNC5 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC6(struct v4l2_subdev *sd, int enable)
{
	struct imx_ic_priv *ic_priv = FUNC5(sd);
	struct prp_priv *priv = ic_priv->task_priv;
	int ret = 0;

	FUNC1(&priv->lock);

	if (!priv->src_sd || !priv->sink) {
		ret = -EPIPE;
		goto out;
	}

	/*
	 * enable/disable streaming only if stream_count is
	 * going from 0 to 1 / 1 to 0.
	 */
	if (priv->stream_count != !enable)
		goto update_count;

	FUNC0(ic_priv->ipu_dev, "%s: stream %s\n", sd->name,
		enable ? "ON" : "OFF");

	if (enable)
		ret = FUNC3(priv);
	else
		FUNC4(priv);
	if (ret)
		goto out;

update_count:
	priv->stream_count += enable ? 1 : -1;
	if (priv->stream_count < 0)
		priv->stream_count = 0;
out:
	FUNC2(&priv->lock);
	return ret;
}