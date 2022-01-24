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
struct vdic_priv {int stream_count; int /*<<< orphan*/  lock; int /*<<< orphan*/  ipu_dev; int /*<<< orphan*/  src; scalar_t__ csi_direct; int /*<<< orphan*/  sink_sd; } ;
struct v4l2_subdev {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOIOCTLCMD ; 
 int EPIPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 struct v4l2_subdev* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_stream ; 
 struct vdic_priv* FUNC4 (struct v4l2_subdev*) ; 
 int FUNC5 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct vdic_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct vdic_priv*) ; 
 int /*<<< orphan*/  video ; 

__attribute__((used)) static int FUNC8(struct v4l2_subdev *sd, int enable)
{
	struct vdic_priv *priv = FUNC4(sd);
	struct v4l2_subdev *src_sd = NULL;
	int ret = 0;

	FUNC2(&priv->lock);

	if (!priv->src || !priv->sink_sd) {
		ret = -EPIPE;
		goto out;
	}

	if (priv->csi_direct)
		src_sd = FUNC1(priv->src);

	/*
	 * enable/disable streaming only if stream_count is
	 * going from 0 to 1 / 1 to 0.
	 */
	if (priv->stream_count != !enable)
		goto update_count;

	FUNC0(priv->ipu_dev, "%s: stream %s\n", sd->name,
		enable ? "ON" : "OFF");

	if (enable)
		ret = FUNC6(priv);
	else
		FUNC7(priv);
	if (ret)
		goto out;

	if (src_sd) {
		/* start/stop upstream */
		ret = FUNC5(src_sd, video, s_stream, enable);
		ret = (ret && ret != -ENOIOCTLCMD) ? ret : 0;
		if (ret) {
			if (enable)
				FUNC7(priv);
			goto out;
		}
	}

update_count:
	priv->stream_count += enable ? 1 : -1;
	if (priv->stream_count < 0)
		priv->stream_count = 0;
out:
	FUNC3(&priv->lock);
	return ret;
}