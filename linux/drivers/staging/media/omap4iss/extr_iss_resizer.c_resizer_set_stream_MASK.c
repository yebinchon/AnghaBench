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
struct iss_resizer_device {int state; int output; int /*<<< orphan*/  stopping; int /*<<< orphan*/  wait; struct iss_video video_out; } ;
struct iss_device {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
#define  ISS_PIPELINE_STREAM_CONTINUOUS 129 
#define  ISS_PIPELINE_STREAM_STOPPED 128 
 int ISS_VIDEO_DMAQUEUE_QUEUED ; 
 int /*<<< orphan*/  OMAP4_ISS_ISP_SUBCLK_RSZ ; 
 int /*<<< orphan*/  OMAP4_ISS_MEM_ISP_RESIZER ; 
 int RESIZER_OUTPUT_MEMORY ; 
 int /*<<< orphan*/  RSZ_GCK_MMR ; 
 int /*<<< orphan*/  RSZ_GCK_MMR_MMR ; 
 int /*<<< orphan*/  RSZ_GCK_SDR ; 
 int /*<<< orphan*/  RSZ_GCK_SDR_CORE ; 
 int /*<<< orphan*/  RSZ_SYSCONFIG ; 
 int /*<<< orphan*/  RSZ_SYSCONFIG_RSZA_CLK_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iss_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iss_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iss_video*) ; 
 int /*<<< orphan*/  FUNC4 (struct iss_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iss_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct iss_resizer_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct iss_resizer_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct iss_resizer_device*) ; 
 struct iss_device* FUNC10 (struct iss_resizer_device*) ; 
 struct iss_resizer_device* FUNC11 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC12(struct v4l2_subdev *sd, int enable)
{
	struct iss_resizer_device *resizer = FUNC11(sd);
	struct iss_device *iss = FUNC10(resizer);
	struct iss_video *video_out = &resizer->video_out;
	int ret = 0;

	if (resizer->state == ISS_PIPELINE_STREAM_STOPPED) {
		if (enable == ISS_PIPELINE_STREAM_STOPPED)
			return 0;

		FUNC5(iss, OMAP4_ISS_ISP_SUBCLK_RSZ);

		FUNC2(iss, OMAP4_ISS_MEM_ISP_RESIZER, RSZ_GCK_MMR,
			    RSZ_GCK_MMR_MMR);
		FUNC2(iss, OMAP4_ISS_MEM_ISP_RESIZER, RSZ_GCK_SDR,
			    RSZ_GCK_SDR_CORE);

		/* FIXME: Enable RSZB also */
		FUNC2(iss, OMAP4_ISS_MEM_ISP_RESIZER, RSZ_SYSCONFIG,
			    RSZ_SYSCONFIG_RSZA_CLK_EN);
	}

	switch (enable) {
	case ISS_PIPELINE_STREAM_CONTINUOUS:

		FUNC7(resizer);
		FUNC9(resizer);

		/*
		 * When outputting to memory with no buffer available, let the
		 * buffer queue handler start the hardware. A DMA queue flag
		 * ISS_VIDEO_DMAQUEUE_QUEUED will be set as soon as there is
		 * a buffer available.
		 */
		if (resizer->output & RESIZER_OUTPUT_MEMORY &&
		    !(video_out->dmaqueue_flags & ISS_VIDEO_DMAQUEUE_QUEUED))
			break;

		FUNC0(&resizer->stopping, 0);
		FUNC8(resizer, 1);
		FUNC3(video_out);
		break;

	case ISS_PIPELINE_STREAM_STOPPED:
		if (resizer->state == ISS_PIPELINE_STREAM_STOPPED)
			return 0;
		if (FUNC6(&sd->entity, &resizer->wait,
					      &resizer->stopping))
			ret = -ETIMEDOUT;

		FUNC8(resizer, 0);
		FUNC1(iss, OMAP4_ISS_MEM_ISP_RESIZER, RSZ_SYSCONFIG,
			    RSZ_SYSCONFIG_RSZA_CLK_EN);
		FUNC1(iss, OMAP4_ISS_MEM_ISP_RESIZER, RSZ_GCK_SDR,
			    RSZ_GCK_SDR_CORE);
		FUNC1(iss, OMAP4_ISS_MEM_ISP_RESIZER, RSZ_GCK_MMR,
			    RSZ_GCK_MMR_MMR);
		FUNC4(iss, OMAP4_ISS_ISP_SUBCLK_RSZ);
		FUNC3(video_out);
		break;
	}

	resizer->state = enable;
	return ret;
}