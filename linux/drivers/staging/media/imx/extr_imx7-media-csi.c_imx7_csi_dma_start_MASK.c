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
struct v4l2_pix_format {int /*<<< orphan*/  sizeimage; } ;
struct TYPE_3__ {struct v4l2_pix_format pix; } ;
struct TYPE_4__ {TYPE_1__ fmt; } ;
struct imx_media_video_dev {TYPE_2__ fmt; } ;
struct imx7_csi {int last_eof; int /*<<< orphan*/  last_eof_completion; scalar_t__ frame_sequence; int /*<<< orphan*/  sd; int /*<<< orphan*/  underrun_buf; int /*<<< orphan*/  dev; struct imx_media_video_dev* vdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct imx7_csi*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC4(struct imx7_csi *csi)
{
	struct imx_media_video_dev *vdev = csi->vdev;
	struct v4l2_pix_format *out_pix = &vdev->fmt.fmt.pix;
	int ret;

	ret = FUNC1(csi->dev, &csi->underrun_buf,
				      out_pix->sizeimage);
	if (ret < 0) {
		FUNC3(&csi->sd, "consider increasing the CMA area\n");
		return ret;
	}

	csi->frame_sequence = 0;
	csi->last_eof = false;
	FUNC2(&csi->last_eof_completion);

	FUNC0(csi);

	return 0;
}