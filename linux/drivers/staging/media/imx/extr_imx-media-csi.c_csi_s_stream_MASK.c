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
struct csi_priv {int stream_count; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  sink; int /*<<< orphan*/  src_sd; } ;

/* Variables and functions */
 int EPIPE ; 
 int FUNC0 (struct csi_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct csi_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct csi_priv* FUNC5 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC6(struct v4l2_subdev *sd, int enable)
{
	struct csi_priv *priv = FUNC5(sd);
	int ret = 0;

	FUNC3(&priv->lock);

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

	if (enable) {
		FUNC2(priv->dev, "stream ON\n");
		ret = FUNC0(priv);
		if (ret)
			goto out;
	} else {
		FUNC2(priv->dev, "stream OFF\n");
		FUNC1(priv);
	}

update_count:
	priv->stream_count += enable ? 1 : -1;
	if (priv->stream_count < 0)
		priv->stream_count = 0;
out:
	FUNC4(&priv->lock);
	return ret;
}