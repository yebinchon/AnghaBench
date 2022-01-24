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
struct v4l2_subdev_format {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_fwnode_endpoint {int /*<<< orphan*/  bus_type; } ;
struct media_link {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  entity; } ;
struct csi_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  csi_id; int /*<<< orphan*/  ipu; int /*<<< orphan*/ * format_mbus; int /*<<< orphan*/  csi; TYPE_1__ sd; struct v4l2_fwnode_endpoint upstream_ep; } ;

/* Variables and functions */
 size_t CSI_SINK_PAD ; 
 int FUNC0 (struct csi_priv*,struct v4l2_fwnode_endpoint*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_fwnode_endpoint*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 struct csi_priv* FUNC8 (struct v4l2_subdev*) ; 
 int FUNC9 (struct v4l2_subdev*,struct media_link*,struct v4l2_subdev_format*,struct v4l2_subdev_format*) ; 

__attribute__((used)) static int FUNC10(struct v4l2_subdev *sd,
			     struct media_link *link,
			     struct v4l2_subdev_format *source_fmt,
			     struct v4l2_subdev_format *sink_fmt)
{
	struct csi_priv *priv = FUNC8(sd);
	struct v4l2_fwnode_endpoint upstream_ep = { .bus_type = 0 };
	bool is_csi2;
	int ret;

	ret = FUNC9(sd, link,
						source_fmt, sink_fmt);
	if (ret)
		return ret;

	ret = FUNC0(priv, &upstream_ep);
	if (ret) {
		FUNC7(&priv->sd, "failed to find upstream endpoint\n");
		return ret;
	}

	FUNC5(&priv->lock);

	priv->upstream_ep = upstream_ep;
	is_csi2 = !FUNC4(&upstream_ep);
	if (is_csi2) {
		int vc_num = 0;
		/*
		 * NOTE! It seems the virtual channels from the mipi csi-2
		 * receiver are used only for routing by the video mux's,
		 * or for hard-wired routing to the CSI's. Once the stream
		 * enters the CSI's however, they are treated internally
		 * in the IPU as virtual channel 0.
		 */
#if 0
		mutex_unlock(&priv->lock);
		vc_num = imx_media_find_mipi_csi2_channel(&priv->sd.entity);
		if (vc_num < 0)
			return vc_num;
		mutex_lock(&priv->lock);
#endif
		FUNC2(priv->csi, vc_num,
					  &priv->format_mbus[CSI_SINK_PAD]);
	}

	/* select either parallel or MIPI-CSI2 as input to CSI */
	FUNC3(priv->ipu, priv->csi_id, is_csi2);

	FUNC6(&priv->lock);
	return ret;
}