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
struct v4l2_fract {int dummy; } ;
struct csi_priv {size_t active_output_pad; scalar_t__ dest; int /*<<< orphan*/  src_sd; scalar_t__ fim; int /*<<< orphan*/  sd; int /*<<< orphan*/  csi; struct v4l2_fract* frame_interval; } ;

/* Variables and functions */
 int ENOIOCTLCMD ; 
 scalar_t__ IPU_CSI_DEST_IDMAC ; 
 int FUNC0 (struct csi_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct csi_priv*) ; 
 int FUNC2 (struct csi_priv*) ; 
 int FUNC3 (scalar_t__,struct v4l2_fract*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_stream ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  video ; 

__attribute__((used)) static int FUNC7(struct csi_priv *priv)
{
	struct v4l2_fract *output_fi;
	int ret;

	output_fi = &priv->frame_interval[priv->active_output_pad];

	/* start upstream */
	ret = FUNC6(priv->src_sd, video, s_stream, 1);
	ret = (ret && ret != -ENOIOCTLCMD) ? ret : 0;
	if (ret)
		return ret;

	if (priv->dest == IPU_CSI_DEST_IDMAC) {
		ret = FUNC0(priv);
		if (ret)
			goto stop_upstream;
	}

	ret = FUNC2(priv);
	if (ret)
		goto idmac_stop;

	/* start the frame interval monitor */
	if (priv->fim && priv->dest == IPU_CSI_DEST_IDMAC) {
		ret = FUNC3(priv->fim, output_fi, true);
		if (ret)
			goto idmac_stop;
	}

	ret = FUNC4(priv->csi);
	if (ret) {
		FUNC5(&priv->sd, "CSI enable error: %d\n", ret);
		goto fim_off;
	}

	return 0;

fim_off:
	if (priv->fim && priv->dest == IPU_CSI_DEST_IDMAC)
		FUNC3(priv->fim, NULL, false);
idmac_stop:
	if (priv->dest == IPU_CSI_DEST_IDMAC)
		FUNC1(priv);
stop_upstream:
	FUNC6(priv->src_sd, video, s_stream, 0);
	return ret;
}