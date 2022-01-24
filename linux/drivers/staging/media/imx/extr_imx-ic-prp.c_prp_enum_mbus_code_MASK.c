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
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_mbus_code_enum {int pad; int /*<<< orphan*/  code; int /*<<< orphan*/  which; int /*<<< orphan*/  index; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int /*<<< orphan*/  code; } ;
struct prp_priv {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS_SEL_ANY ; 
 int EINVAL ; 
#define  PRP_SINK_PAD 130 
#define  PRP_SRC_PAD_PRPENC 129 
#define  PRP_SRC_PAD_PRPVF 128 
 struct v4l2_mbus_framefmt* FUNC0 (struct prp_priv*,struct v4l2_subdev_pad_config*,int const,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct prp_priv* FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd,
			      struct v4l2_subdev_pad_config *cfg,
			      struct v4l2_subdev_mbus_code_enum *code)
{
	struct prp_priv *priv = FUNC4(sd);
	struct v4l2_mbus_framefmt *infmt;
	int ret = 0;

	FUNC2(&priv->lock);

	switch (code->pad) {
	case PRP_SINK_PAD:
		ret = FUNC1(&code->code, code->index,
						CS_SEL_ANY);
		break;
	case PRP_SRC_PAD_PRPENC:
	case PRP_SRC_PAD_PRPVF:
		if (code->index != 0) {
			ret = -EINVAL;
			goto out;
		}
		infmt = FUNC0(priv, cfg, PRP_SINK_PAD, code->which);
		code->code = infmt->code;
		break;
	default:
		ret = -EINVAL;
	}
out:
	FUNC3(&priv->lock);
	return ret;
}