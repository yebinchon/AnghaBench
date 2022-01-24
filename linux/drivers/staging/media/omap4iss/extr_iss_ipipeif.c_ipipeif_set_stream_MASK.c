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
struct iss_ipipeif_device {int state; int output; int /*<<< orphan*/  stopping; int /*<<< orphan*/  wait; struct iss_video video_out; } ;
struct iss_device {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  IPIPEIF_DRV_SUBCLK_MASK ; 
 int IPIPEIF_OUTPUT_MEMORY ; 
#define  ISS_PIPELINE_STREAM_CONTINUOUS 129 
#define  ISS_PIPELINE_STREAM_STOPPED 128 
 int ISS_VIDEO_DMAQUEUE_QUEUED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iss_ipipeif_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct iss_ipipeif_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct iss_ipipeif_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct iss_ipipeif_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct iss_video*) ; 
 int /*<<< orphan*/  FUNC6 (struct iss_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct iss_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct iss_device* FUNC9 (struct iss_ipipeif_device*) ; 
 struct iss_ipipeif_device* FUNC10 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC11(struct v4l2_subdev *sd, int enable)
{
	struct iss_ipipeif_device *ipipeif = FUNC10(sd);
	struct iss_device *iss = FUNC9(ipipeif);
	struct iss_video *video_out = &ipipeif->video_out;
	int ret = 0;

	if (ipipeif->state == ISS_PIPELINE_STREAM_STOPPED) {
		if (enable == ISS_PIPELINE_STREAM_STOPPED)
			return 0;

		FUNC7(iss, IPIPEIF_DRV_SUBCLK_MASK);
	}

	switch (enable) {
	case ISS_PIPELINE_STREAM_CONTINUOUS:

		FUNC1(ipipeif);
		FUNC3(ipipeif);

		/*
		 * When outputting to memory with no buffer available, let the
		 * buffer queue handler start the hardware. A DMA queue flag
		 * ISS_VIDEO_DMAQUEUE_QUEUED will be set as soon as there is
		 * a buffer available.
		 */
		if (ipipeif->output & IPIPEIF_OUTPUT_MEMORY &&
		    !(video_out->dmaqueue_flags & ISS_VIDEO_DMAQUEUE_QUEUED))
			break;

		FUNC0(&ipipeif->stopping, 0);
		if (ipipeif->output & IPIPEIF_OUTPUT_MEMORY)
			FUNC4(ipipeif, 1);
		FUNC2(ipipeif, 1);
		FUNC5(video_out);
		break;

	case ISS_PIPELINE_STREAM_STOPPED:
		if (ipipeif->state == ISS_PIPELINE_STREAM_STOPPED)
			return 0;
		if (FUNC8(&sd->entity, &ipipeif->wait,
					      &ipipeif->stopping))
			ret = -ETIMEDOUT;

		if (ipipeif->output & IPIPEIF_OUTPUT_MEMORY)
			FUNC4(ipipeif, 0);
		FUNC2(ipipeif, 0);
		FUNC6(iss, IPIPEIF_DRV_SUBCLK_MASK);
		FUNC5(video_out);
		break;
	}

	ipipeif->state = enable;
	return ret;
}