#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev {int dummy; } ;
struct media_entity {scalar_t__ pipe; } ;
struct TYPE_2__ {int /*<<< orphan*/  graph_mutex; } ;
struct imx_media_dev {TYPE_1__ md; int /*<<< orphan*/  pipe; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct media_entity*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct media_entity*) ; 
 int /*<<< orphan*/  FUNC2 (struct media_entity*) ; 
 struct v4l2_subdev* FUNC3 (struct media_entity*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_stream ; 
 int FUNC6 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  video ; 

int FUNC7(struct imx_media_dev *imxmd,
				  struct media_entity *entity,
				  bool on)
{
	struct v4l2_subdev *sd;
	int ret = 0;

	if (!FUNC2(entity))
		return -EINVAL;
	sd = FUNC3(entity);

	FUNC4(&imxmd->md.graph_mutex);

	if (on) {
		ret = FUNC0(entity, &imxmd->pipe);
		if (ret)
			goto out;
		ret = FUNC6(sd, video, s_stream, 1);
		if (ret)
			FUNC1(entity);
	} else {
		FUNC6(sd, video, s_stream, 0);
		if (entity->pipe)
			FUNC1(entity);
	}

out:
	FUNC5(&imxmd->md.graph_mutex);
	return ret;
}