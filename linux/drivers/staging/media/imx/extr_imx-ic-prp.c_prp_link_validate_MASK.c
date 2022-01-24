#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev_format {int dummy; } ;
struct v4l2_subdev {int grp_id; } ;
struct prp_priv {int csi_id; int /*<<< orphan*/  lock; scalar_t__ sink_sd_prpenc; TYPE_2__* src_sd; } ;
struct media_link {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  entity; } ;
struct imx_ic_priv {TYPE_1__ sd; struct prp_priv* task_priv; } ;
struct TYPE_4__ {int grp_id; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IMX_MEDIA_GRP_ID_IPU_CSI ; 
#define  IMX_MEDIA_GRP_ID_IPU_CSI0 129 
#define  IMX_MEDIA_GRP_ID_IPU_CSI1 128 
 int IMX_MEDIA_GRP_ID_IPU_VDIC ; 
 scalar_t__ FUNC0 (struct v4l2_subdev*) ; 
 struct v4l2_subdev* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct imx_ic_priv* FUNC4 (struct v4l2_subdev*) ; 
 int FUNC5 (struct v4l2_subdev*,struct media_link*,struct v4l2_subdev_format*,struct v4l2_subdev_format*) ; 

__attribute__((used)) static int FUNC6(struct v4l2_subdev *sd,
			     struct media_link *link,
			     struct v4l2_subdev_format *source_fmt,
			     struct v4l2_subdev_format *sink_fmt)
{
	struct imx_ic_priv *ic_priv = FUNC4(sd);
	struct prp_priv *priv = ic_priv->task_priv;
	struct v4l2_subdev *csi;
	int ret;

	ret = FUNC5(sd, link,
						source_fmt, sink_fmt);
	if (ret)
		return ret;

	csi = FUNC1(&ic_priv->sd.entity,
					IMX_MEDIA_GRP_ID_IPU_CSI, true);
	if (FUNC0(csi))
		csi = NULL;

	FUNC2(&priv->lock);

	if (priv->src_sd->grp_id & IMX_MEDIA_GRP_ID_IPU_VDIC) {
		/*
		 * the ->PRPENC link cannot be enabled if the source
		 * is the VDIC
		 */
		if (priv->sink_sd_prpenc) {
			ret = -EINVAL;
			goto out;
		}
	} else {
		/* the source is a CSI */
		if (!csi) {
			ret = -EINVAL;
			goto out;
		}
	}

	if (csi) {
		switch (csi->grp_id) {
		case IMX_MEDIA_GRP_ID_IPU_CSI0:
			priv->csi_id = 0;
			break;
		case IMX_MEDIA_GRP_ID_IPU_CSI1:
			priv->csi_id = 1;
			break;
		default:
			ret = -EINVAL;
		}
	} else {
		priv->csi_id = 0;
	}

out:
	FUNC3(&priv->lock);
	return ret;
}