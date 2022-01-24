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
struct v4l2_subdev {int /*<<< orphan*/  dev; } ;
struct imx_media_fim {int /*<<< orphan*/  lock; struct v4l2_subdev* sd; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct imx_media_fim* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct imx_media_fim* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct imx_media_fim*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct imx_media_fim *FUNC4(struct v4l2_subdev *sd)
{
	struct imx_media_fim *fim;
	int ret;

	fim = FUNC1(sd->dev, sizeof(*fim), GFP_KERNEL);
	if (!fim)
		return FUNC0(-ENOMEM);

	fim->sd = sd;

	FUNC3(&fim->lock);

	ret = FUNC2(fim);
	if (ret)
		return FUNC0(ret);

	return fim;
}