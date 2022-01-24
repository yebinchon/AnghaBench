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
struct v4l2_subdev {char* name; struct media_entity entity; int /*<<< orphan*/  flags; int /*<<< orphan*/  grp_id; int /*<<< orphan*/ * internal_ops; } ;
struct media_pad {int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int bpl_alignment; int bpl_zero_padding; int bpl_max; int capture_mem; int /*<<< orphan*/  iss; int /*<<< orphan*/ * ops; int /*<<< orphan*/  type; } ;
struct iss_csi2_device {struct v4l2_subdev subdev; TYPE_1__ video_out; int /*<<< orphan*/  iss; struct media_pad* pads; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CSI2_PADS_NUM ; 
 size_t CSI2_PAD_SINK ; 
 size_t CSI2_PAD_SOURCE ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SINK ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SOURCE ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int V4L2_SUBDEV_NAME_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  csi2_internal_ops ; 
 int /*<<< orphan*/  csi2_issvideo_ops ; 
 int /*<<< orphan*/  csi2_media_ops ; 
 int /*<<< orphan*/  csi2_ops ; 
 int /*<<< orphan*/  FUNC3 (struct media_entity*) ; 
 int FUNC4 (struct media_entity*,int /*<<< orphan*/ ,struct media_pad*) ; 
 int FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct v4l2_subdev*,struct iss_csi2_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct iss_csi2_device *csi2, const char *subname)
{
	struct v4l2_subdev *sd = &csi2->subdev;
	struct media_pad *pads = csi2->pads;
	struct media_entity *me = &sd->entity;
	int ret;
	char name[V4L2_SUBDEV_NAME_SIZE];

	FUNC8(sd, &csi2_ops);
	sd->internal_ops = &csi2_internal_ops;
	FUNC6(name, sizeof(name), "CSI2%s", subname);
	FUNC6(sd->name, sizeof(sd->name), "OMAP4 ISS %s", name);

	sd->grp_id = FUNC0(16);	/* group ID for iss subdevs */
	FUNC7(sd, csi2);
	sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;

	pads[CSI2_PAD_SOURCE].flags = MEDIA_PAD_FL_SOURCE;
	pads[CSI2_PAD_SINK].flags = MEDIA_PAD_FL_SINK;

	me->ops = &csi2_media_ops;
	ret = FUNC4(me, CSI2_PADS_NUM, pads);
	if (ret < 0)
		return ret;

	FUNC2(sd, NULL);

	/* Video device node */
	csi2->video_out.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
	csi2->video_out.ops = &csi2_issvideo_ops;
	csi2->video_out.bpl_alignment = 32;
	csi2->video_out.bpl_zero_padding = 1;
	csi2->video_out.bpl_max = 0x1ffe0;
	csi2->video_out.iss = csi2->iss;
	csi2->video_out.capture_mem = FUNC1(4096 * 4096) * 3;

	ret = FUNC5(&csi2->video_out, name);
	if (ret < 0)
		goto error_video;

	return 0;

error_video:
	FUNC3(&csi2->subdev.entity);
	return ret;
}