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
struct v4l2_subdev_format {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct media_link {TYPE_2__* source; } ;
struct iss_pipeline {int /*<<< orphan*/  external; } ;
struct TYPE_3__ {int /*<<< orphan*/  entity; } ;
struct iss_csi2_device {TYPE_1__ subdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  entity; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct iss_pipeline*,struct media_link*) ; 
 struct iss_pipeline* FUNC2 (int /*<<< orphan*/ *) ; 
 struct iss_csi2_device* FUNC3 (struct v4l2_subdev*) ; 
 int FUNC4 (struct v4l2_subdev*,struct media_link*,struct v4l2_subdev_format*,struct v4l2_subdev_format*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd, struct media_link *link,
			      struct v4l2_subdev_format *source_fmt,
			      struct v4l2_subdev_format *sink_fmt)
{
	struct iss_csi2_device *csi2 = FUNC3(sd);
	struct iss_pipeline *pipe = FUNC2(&csi2->subdev.entity);
	int rval;

	pipe->external = FUNC0(link->source->entity);
	rval = FUNC1(pipe, link);
	if (rval < 0)
		return rval;

	return FUNC4(sd, link, source_fmt,
						 sink_fmt);
}