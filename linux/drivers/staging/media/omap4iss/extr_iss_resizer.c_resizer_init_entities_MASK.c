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
struct media_entity {int /*<<< orphan*/ * ops; } ;
struct v4l2_subdev {int /*<<< orphan*/  flags; int /*<<< orphan*/  grp_id; int /*<<< orphan*/  name; int /*<<< orphan*/ * internal_ops; struct media_entity entity; } ;
struct media_pad {int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int capture_mem; int bpl_alignment; int bpl_zero_padding; int bpl_max; int /*<<< orphan*/  iss; int /*<<< orphan*/ * ops; int /*<<< orphan*/  type; } ;
struct iss_resizer_device {TYPE_1__ video_out; int /*<<< orphan*/  input; struct media_pad* pads; struct v4l2_subdev subdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SINK ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SOURCE ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  RESIZER_INPUT_NONE ; 
 int /*<<< orphan*/  RESIZER_PADS_NUM ; 
 size_t RESIZER_PAD_SINK ; 
 size_t RESIZER_PAD_SOURCE_MEM ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int FUNC2 (struct media_entity*,int /*<<< orphan*/ ,struct media_pad*) ; 
 int FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  resizer_media_ops ; 
 int /*<<< orphan*/  resizer_v4l2_internal_ops ; 
 int /*<<< orphan*/  resizer_v4l2_ops ; 
 int /*<<< orphan*/  resizer_video_ops ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct iss_resizer_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct v4l2_subdev*,struct iss_resizer_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct iss_resizer_device *resizer)
{
	struct v4l2_subdev *sd = &resizer->subdev;
	struct media_pad *pads = resizer->pads;
	struct media_entity *me = &sd->entity;
	int ret;

	resizer->input = RESIZER_INPUT_NONE;

	FUNC8(sd, &resizer_v4l2_ops);
	sd->internal_ops = &resizer_v4l2_internal_ops;
	FUNC5(sd->name, "OMAP4 ISS ISP resizer", sizeof(sd->name));
	sd->grp_id = FUNC0(16);	/* group ID for iss subdevs */
	FUNC7(sd, resizer);
	sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;

	pads[RESIZER_PAD_SINK].flags = MEDIA_PAD_FL_SINK;
	pads[RESIZER_PAD_SOURCE_MEM].flags = MEDIA_PAD_FL_SOURCE;

	me->ops = &resizer_media_ops;
	ret = FUNC2(me, RESIZER_PADS_NUM, pads);
	if (ret < 0)
		return ret;

	FUNC4(sd, NULL);

	resizer->video_out.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
	resizer->video_out.ops = &resizer_video_ops;
	resizer->video_out.iss = FUNC6(resizer);
	resizer->video_out.capture_mem = FUNC1(4096 * 4096) * 3;
	resizer->video_out.bpl_alignment = 32;
	resizer->video_out.bpl_zero_padding = 1;
	resizer->video_out.bpl_max = 0x1ffe0;

	return FUNC3(&resizer->video_out, "ISP resizer a");
}