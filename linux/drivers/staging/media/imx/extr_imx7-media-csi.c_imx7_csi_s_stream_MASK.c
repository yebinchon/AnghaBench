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
struct imx7_csi {int is_streaming; int /*<<< orphan*/  lock; int /*<<< orphan*/  src_sd; int /*<<< orphan*/  sink; } ;

/* Variables and functions */
 int EPIPE ; 
 int FUNC0 (struct imx7_csi*) ; 
 int /*<<< orphan*/  FUNC1 (struct imx7_csi*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_stream ; 
 struct imx7_csi* FUNC4 (struct v4l2_subdev*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  video ; 

__attribute__((used)) static int FUNC6(struct v4l2_subdev *sd, int enable)
{
	struct imx7_csi *csi = FUNC4(sd);
	int ret = 0;

	FUNC2(&csi->lock);

	if (!csi->src_sd || !csi->sink) {
		ret = -EPIPE;
		goto out_unlock;
	}

	if (csi->is_streaming == !!enable)
		goto out_unlock;

	if (enable) {
		ret = FUNC5(csi->src_sd, video, s_stream, 1);
		if (ret < 0)
			goto out_unlock;

		ret = FUNC0(csi);
		if (ret < 0) {
			FUNC5(csi->src_sd, video, s_stream, 0);
			goto out_unlock;
		}
	} else {
		FUNC1(csi);

		FUNC5(csi->src_sd, video, s_stream, 0);
	}

	csi->is_streaming = !!enable;

out_unlock:
	FUNC3(&csi->lock);

	return ret;
}