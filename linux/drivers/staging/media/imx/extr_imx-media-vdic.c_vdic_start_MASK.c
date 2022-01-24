#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vdic_priv {size_t active_input_pad; TYPE_1__* ops; int /*<<< orphan*/  vdi; int /*<<< orphan*/  motion; scalar_t__ csi_direct; struct v4l2_mbus_framefmt* format_mbus; } ;
struct v4l2_mbus_framefmt {int /*<<< orphan*/  field; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_3__ {int (* setup ) (struct vdic_priv*) ;int /*<<< orphan*/  (* start ) (struct vdic_priv*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MEDIA_BUS_FMT_UYVY8_2X8 ; 
 int /*<<< orphan*/  V4L2_STD_UNKNOWN ; 
 TYPE_1__ direct_ops ; 
 TYPE_1__ indirect_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct vdic_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct vdic_priv*) ; 
 int FUNC6 (struct vdic_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct vdic_priv*) ; 

__attribute__((used)) static int FUNC8(struct vdic_priv *priv)
{
	struct v4l2_mbus_framefmt *infmt;
	int ret;

	infmt = &priv->format_mbus[priv->active_input_pad];

	priv->ops = priv->csi_direct ? &direct_ops : &indirect_ops;

	ret = FUNC6(priv);
	if (ret)
		return ret;

	/*
	 * init the VDIC.
	 *
	 * note we don't give infmt->code to ipu_vdi_setup(). The VDIC
	 * only supports 4:2:2 or 4:2:0, and this subdev will only
	 * negotiate 4:2:2 at its sink pads.
	 */
	FUNC3(priv->vdi, MEDIA_BUS_FMT_UYVY8_2X8,
		      infmt->width, infmt->height);
	FUNC1(priv->vdi, V4L2_STD_UNKNOWN, infmt->field);
	FUNC2(priv->vdi, priv->motion);

	ret = priv->ops->setup(priv);
	if (ret)
		goto out_put_ipu;

	FUNC0(priv->vdi);

	priv->ops->start(priv);

	return 0;

out_put_ipu:
	FUNC7(priv);
	return ret;
}