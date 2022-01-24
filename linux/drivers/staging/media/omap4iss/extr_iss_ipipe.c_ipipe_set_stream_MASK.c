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
struct iss_ipipe_device {int state; int /*<<< orphan*/  stopping; int /*<<< orphan*/  wait; } ;
struct iss_device {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  IPIPE_GCK_MMR ; 
 int IPIPE_GCK_MMR_REG ; 
 int /*<<< orphan*/  IPIPE_GCK_PIX ; 
 int IPIPE_GCK_PIX_G0 ; 
 int IPIPE_GCK_PIX_G1 ; 
 int IPIPE_GCK_PIX_G2 ; 
 int IPIPE_GCK_PIX_G3 ; 
#define  ISS_PIPELINE_STREAM_CONTINUOUS 129 
#define  ISS_PIPELINE_STREAM_STOPPED 128 
 int /*<<< orphan*/  OMAP4_ISS_ISP_SUBCLK_IPIPE ; 
 int /*<<< orphan*/  OMAP4_ISS_MEM_ISP_IPIPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iss_ipipe_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct iss_ipipe_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct iss_ipipe_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct iss_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct iss_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct iss_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct iss_device* FUNC8 (struct iss_ipipe_device*) ; 
 struct iss_ipipe_device* FUNC9 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC10(struct v4l2_subdev *sd, int enable)
{
	struct iss_ipipe_device *ipipe = FUNC9(sd);
	struct iss_device *iss = FUNC8(ipipe);
	int ret = 0;

	if (ipipe->state == ISS_PIPELINE_STREAM_STOPPED) {
		if (enable == ISS_PIPELINE_STREAM_STOPPED)
			return 0;

		FUNC6(iss, OMAP4_ISS_ISP_SUBCLK_IPIPE);

		/* Enable clk_arm_g0 */
		FUNC4(iss, OMAP4_ISS_MEM_ISP_IPIPE, IPIPE_GCK_MMR,
			      IPIPE_GCK_MMR_REG);

		/* Enable clk_pix_g[3:0] */
		FUNC4(iss, OMAP4_ISS_MEM_ISP_IPIPE, IPIPE_GCK_PIX,
			      IPIPE_GCK_PIX_G3 | IPIPE_GCK_PIX_G2 |
			      IPIPE_GCK_PIX_G1 | IPIPE_GCK_PIX_G0);
	}

	switch (enable) {
	case ISS_PIPELINE_STREAM_CONTINUOUS:

		FUNC1(ipipe);
		FUNC3(ipipe);

		FUNC0(&ipipe->stopping, 0);
		FUNC2(ipipe, 1);
		break;

	case ISS_PIPELINE_STREAM_STOPPED:
		if (ipipe->state == ISS_PIPELINE_STREAM_STOPPED)
			return 0;
		if (FUNC7(&sd->entity, &ipipe->wait,
					      &ipipe->stopping))
			ret = -ETIMEDOUT;

		FUNC2(ipipe, 0);
		FUNC5(iss, OMAP4_ISS_ISP_SUBCLK_IPIPE);
		break;
	}

	ipipe->state = enable;
	return ret;
}