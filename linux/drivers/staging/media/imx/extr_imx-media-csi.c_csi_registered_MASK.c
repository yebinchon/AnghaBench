#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct v4l2_subdev {int /*<<< orphan*/  entity; } ;
struct ipu_csi {int dummy; } ;
struct TYPE_7__ {int width; int height; } ;
struct TYPE_6__ {int width; int height; } ;
struct csi_priv {struct ipu_csi* csi; struct ipu_csi* fim; int /*<<< orphan*/  vdev; TYPE_4__* pad; int /*<<< orphan*/  sd; TYPE_3__ compose; TYPE_2__ crop; int /*<<< orphan*/ * skip; TYPE_1__* frame_interval; int /*<<< orphan*/ * cc; int /*<<< orphan*/ * format_mbus; int /*<<< orphan*/  csi_id; int /*<<< orphan*/  ipu; } ;
struct TYPE_8__ {int /*<<< orphan*/  flags; } ;
struct TYPE_5__ {int numerator; int denominator; } ;

/* Variables and functions */
 int CSI_NUM_PADS ; 
 int CSI_SINK_PAD ; 
 int /*<<< orphan*/  CS_SEL_YUV ; 
 scalar_t__ FUNC0 (struct ipu_csi*) ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SINK ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SOURCE ; 
 int FUNC1 (struct ipu_csi*) ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 int /*<<< orphan*/ * csi_skip ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ipu_csi*) ; 
 struct ipu_csi* FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ipu_csi* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ipu_csi*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct csi_priv* FUNC11 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC12(struct v4l2_subdev *sd)
{
	struct csi_priv *priv = FUNC11(sd);
	struct ipu_csi *csi;
	int i, ret;
	u32 code;

	/* get handle to IPU CSI */
	csi = FUNC7(priv->ipu, priv->csi_id);
	if (FUNC0(csi)) {
		FUNC10(&priv->sd, "failed to get CSI%d\n", priv->csi_id);
		return FUNC1(csi);
	}
	priv->csi = csi;

	for (i = 0; i < CSI_NUM_PADS; i++) {
		priv->pad[i].flags = (i == CSI_SINK_PAD) ?
			MEDIA_PAD_FL_SINK : MEDIA_PAD_FL_SOURCE;

		code = 0;
		if (i != CSI_SINK_PAD)
			FUNC3(&code, 0, CS_SEL_YUV);

		/* set a default mbus format  */
		ret = FUNC6(&priv->format_mbus[i],
					      640, 480, code, V4L2_FIELD_NONE,
					      &priv->cc[i]);
		if (ret)
			goto put_csi;

		/* init default frame interval */
		priv->frame_interval[i].numerator = 1;
		priv->frame_interval[i].denominator = 30;
	}

	/* disable frame skipping */
	priv->skip = &csi_skip[0];

	/* init default crop and compose rectangle sizes */
	priv->crop.width = 640;
	priv->crop.height = 480;
	priv->compose.width = 640;
	priv->compose.height = 480;

	priv->fim = FUNC5(&priv->sd);
	if (FUNC0(priv->fim)) {
		ret = FUNC1(priv->fim);
		goto put_csi;
	}

	ret = FUNC9(&sd->entity, CSI_NUM_PADS, priv->pad);
	if (ret)
		goto free_fim;

	ret = FUNC2(priv->vdev);
	if (ret)
		goto free_fim;

	return 0;

free_fim:
	if (priv->fim)
		FUNC4(priv->fim);
put_csi:
	FUNC8(priv->csi);
	return ret;
}