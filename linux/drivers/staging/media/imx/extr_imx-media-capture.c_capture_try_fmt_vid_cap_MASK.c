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
struct v4l2_subdev_format {int /*<<< orphan*/  which; int /*<<< orphan*/  pad; } ;
struct v4l2_format {int dummy; } ;
struct file {int dummy; } ;
struct capture_priv {int /*<<< orphan*/  src_sd; int /*<<< orphan*/  src_sd_pad; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_SUBDEV_FORMAT_ACTIVE ; 
 int FUNC0 (struct capture_priv*,struct v4l2_subdev_format*,struct v4l2_format*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  get_fmt ; 
 int /*<<< orphan*/  pad ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct v4l2_subdev_format*) ; 
 struct capture_priv* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *fh,
				   struct v4l2_format *f)
{
	struct capture_priv *priv = FUNC2(file);
	struct v4l2_subdev_format fmt_src;
	int ret;

	fmt_src.pad = priv->src_sd_pad;
	fmt_src.which = V4L2_SUBDEV_FORMAT_ACTIVE;
	ret = FUNC1(priv->src_sd, pad, get_fmt, NULL, &fmt_src);
	if (ret)
		return ret;

	return FUNC0(priv, &fmt_src, f, NULL, NULL);
}