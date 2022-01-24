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
struct v4l2_fract {int dummy; } ;
struct imx_media_fim {int stream_on; int /*<<< orphan*/ * ctrl; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 size_t FIM_CL_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct imx_media_fim*) ; 
 int /*<<< orphan*/  FUNC1 (struct imx_media_fim*) ; 
 int FUNC2 (struct imx_media_fim*) ; 
 scalar_t__ FUNC3 (struct imx_media_fim*) ; 
 int /*<<< orphan*/  FUNC4 (struct imx_media_fim*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct imx_media_fim*,struct v4l2_fract const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(struct imx_media_fim *fim,
			     const struct v4l2_fract *fi,
			     bool on)
{
	unsigned long flags;
	int ret = 0;

	FUNC8(fim->ctrl[FIM_CL_ENABLE]);

	if (fim->stream_on == on)
		goto out;

	if (on) {
		FUNC5(&fim->lock, flags);
		FUNC4(fim, true);
		FUNC7(fim, fi);
		FUNC6(&fim->lock, flags);

		if (FUNC3(fim)) {
			ret = FUNC2(fim);
			if (ret)
				goto out;
			FUNC0(fim);
		}
	} else {
		if (FUNC3(fim))
			FUNC1(fim);
	}

	fim->stream_on = on;
out:
	FUNC9(fim->ctrl[FIM_CL_ENABLE]);
	return ret;
}