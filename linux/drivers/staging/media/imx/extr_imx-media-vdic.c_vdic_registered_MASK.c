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
typedef  scalar_t__ u32 ;
struct vdic_priv {int /*<<< orphan*/  ctrl_hdlr; TYPE_2__* pad; int /*<<< orphan*/  active_input_pad; TYPE_1__* frame_interval; int /*<<< orphan*/ * cc; int /*<<< orphan*/ * format_mbus; } ;
struct v4l2_subdev {int /*<<< orphan*/  entity; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {int numerator; int denominator; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS_SEL_YUV ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SINK ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SOURCE ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 int VDIC_NUM_PADS ; 
 int /*<<< orphan*/  VDIC_SINK_PAD_DIRECT ; 
 int VDIC_SINK_PAD_IDMAC ; 
 int VDIC_SRC_PAD_DIRECT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct vdic_priv* FUNC4 (struct v4l2_subdev*) ; 
 int FUNC5 (struct vdic_priv*) ; 

__attribute__((used)) static int FUNC6(struct v4l2_subdev *sd)
{
	struct vdic_priv *priv = FUNC4(sd);
	int i, ret;
	u32 code;

	for (i = 0; i < VDIC_NUM_PADS; i++) {
		priv->pad[i].flags = (i == VDIC_SRC_PAD_DIRECT) ?
			MEDIA_PAD_FL_SOURCE : MEDIA_PAD_FL_SINK;

		code = 0;
		if (i != VDIC_SINK_PAD_IDMAC)
			FUNC0(&code, 0, CS_SEL_YUV);

		/* set a default mbus format  */
		ret = FUNC1(&priv->format_mbus[i],
					      640, 480, code, V4L2_FIELD_NONE,
					      &priv->cc[i]);
		if (ret)
			return ret;

		/* init default frame interval */
		priv->frame_interval[i].numerator = 1;
		priv->frame_interval[i].denominator = 30;
		if (i == VDIC_SRC_PAD_DIRECT)
			priv->frame_interval[i].denominator *= 2;
	}

	priv->active_input_pad = VDIC_SINK_PAD_DIRECT;

	ret = FUNC5(priv);
	if (ret)
		return ret;

	ret = FUNC2(&sd->entity, VDIC_NUM_PADS, priv->pad);
	if (ret)
		FUNC3(&priv->ctrl_hdlr);

	return ret;
}