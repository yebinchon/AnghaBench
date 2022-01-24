#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct video_device {int /*<<< orphan*/  ctrl_handler; TYPE_2__ entity; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct v4l2_subdev {int /*<<< orphan*/  ctrl_handler; TYPE_3__ entity; } ;
struct media_pad {int flags; struct media_entity* entity; } ;
struct media_entity {int num_pads; struct media_pad* pads; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct imx_media_dev {TYPE_1__ md; } ;

/* Variables and functions */
 int MEDIA_PAD_FL_SINK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct media_entity*) ; 
 struct media_pad* FUNC2 (struct media_pad*) ; 
 struct v4l2_subdev* FUNC3 (struct media_entity*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(struct imx_media_dev *imxmd,
				      struct video_device *vfd,
				      struct media_entity *entity)
{
	int i, ret = 0;

	if (FUNC1(entity)) {
		struct v4l2_subdev *sd = FUNC3(entity);

		FUNC0(imxmd->md.dev,
			"adding controls to %s from %s\n",
			vfd->entity.name, sd->entity.name);

		ret = FUNC4(vfd->ctrl_handler,
					    sd->ctrl_handler,
					    NULL, true);
		if (ret)
			return ret;
	}

	/* move upstream */
	for (i = 0; i < entity->num_pads; i++) {
		struct media_pad *pad, *spad = &entity->pads[i];

		if (!(spad->flags & MEDIA_PAD_FL_SINK))
			continue;

		pad = FUNC2(spad);
		if (!pad || !FUNC1(pad->entity))
			continue;

		ret = FUNC5(imxmd, vfd, pad->entity);
		if (ret)
			break;
	}

	return ret;
}