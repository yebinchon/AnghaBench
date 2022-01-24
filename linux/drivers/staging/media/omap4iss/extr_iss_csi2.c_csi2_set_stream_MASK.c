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
struct v4l2_subdev {int /*<<< orphan*/  entity; } ;
struct iss_video {int dmaqueue_flags; } ;
struct iss_device {int dummy; } ;
struct iss_csi2_device {int state; int output; int /*<<< orphan*/  subclk; int /*<<< orphan*/  phy; int /*<<< orphan*/  stopping; int /*<<< orphan*/  wait; struct iss_video video_out; struct iss_device* iss; } ;

/* Variables and functions */
 int CSI2_OUTPUT_MEMORY ; 
 int ENODEV ; 
 int ETIMEDOUT ; 
#define  ISS_PIPELINE_STREAM_CONTINUOUS 129 
#define  ISS_PIPELINE_STREAM_STOPPED 128 
 int ISS_VIDEO_DMAQUEUE_QUEUED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iss_csi2_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct iss_csi2_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct iss_csi2_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct iss_csi2_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iss_csi2_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct iss_video*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct iss_device*,struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct iss_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct iss_device*,int /*<<< orphan*/ ) ; 
 struct iss_csi2_device* FUNC13 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC14(struct v4l2_subdev *sd, int enable)
{
	struct iss_csi2_device *csi2 = FUNC13(sd);
	struct iss_device *iss = csi2->iss;
	struct iss_video *video_out = &csi2->video_out;
	int ret = 0;

	if (csi2->state == ISS_PIPELINE_STREAM_STOPPED) {
		if (enable == ISS_PIPELINE_STREAM_STOPPED)
			return 0;

		FUNC12(iss, csi2->subclk);
	}

	switch (enable) {
	case ISS_PIPELINE_STREAM_CONTINUOUS: {
		ret = FUNC8(iss, sd);
		if (ret < 0)
			return ret;

		if (FUNC7(csi2->phy) < 0)
			return -ENODEV;
		FUNC1(csi2);
		FUNC5(csi2);

		/*
		 * When outputting to memory with no buffer available, let the
		 * buffer queue handler start the hardware. A DMA queue flag
		 * ISS_VIDEO_DMAQUEUE_QUEUED will be set as soon as there is
		 * a buffer available.
		 */
		if (csi2->output & CSI2_OUTPUT_MEMORY &&
		    !(video_out->dmaqueue_flags & ISS_VIDEO_DMAQUEUE_QUEUED))
			break;
		/* Enable context 0 and IRQs */
		FUNC0(&csi2->stopping, 0);
		FUNC2(csi2, 0, 1);
		FUNC3(csi2, 1);
		FUNC6(video_out);
		break;
	}
	case ISS_PIPELINE_STREAM_STOPPED:
		if (csi2->state == ISS_PIPELINE_STREAM_STOPPED)
			return 0;
		if (FUNC10(&sd->entity, &csi2->wait,
					      &csi2->stopping))
			ret = -ETIMEDOUT;
		FUNC2(csi2, 0, 0);
		FUNC3(csi2, 0);
		FUNC4(csi2, 0);
		FUNC9(csi2->phy);
		FUNC11(iss, csi2->subclk);
		FUNC6(video_out);
		break;
	}

	csi2->state = enable;
	return ret;
}