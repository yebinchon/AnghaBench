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
struct media_pad {void* flags; } ;
struct TYPE_2__ {int capture_mem; int bpl_alignment; int bpl_zero_padding; int bpl_max; int /*<<< orphan*/  iss; int /*<<< orphan*/ * ops; int /*<<< orphan*/  type; } ;
struct iss_ipipeif_device {TYPE_1__ video_out; int /*<<< orphan*/  input; struct media_pad* pads; struct v4l2_subdev subdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IPIPEIF_INPUT_NONE ; 
 int /*<<< orphan*/  IPIPEIF_PADS_NUM ; 
 size_t IPIPEIF_PAD_SINK ; 
 size_t IPIPEIF_PAD_SOURCE_ISIF_SF ; 
 size_t IPIPEIF_PAD_SOURCE_VP ; 
 void* MEDIA_PAD_FL_SINK ; 
 void* MEDIA_PAD_FL_SOURCE ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ipipeif_media_ops ; 
 int /*<<< orphan*/  ipipeif_v4l2_internal_ops ; 
 int /*<<< orphan*/  ipipeif_v4l2_ops ; 
 int /*<<< orphan*/  ipipeif_video_ops ; 
 int FUNC3 (struct media_entity*,int /*<<< orphan*/ ,struct media_pad*) ; 
 int FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct iss_ipipeif_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct v4l2_subdev*,struct iss_ipipeif_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct iss_ipipeif_device *ipipeif)
{
	struct v4l2_subdev *sd = &ipipeif->subdev;
	struct media_pad *pads = ipipeif->pads;
	struct media_entity *me = &sd->entity;
	int ret;

	ipipeif->input = IPIPEIF_INPUT_NONE;

	FUNC8(sd, &ipipeif_v4l2_ops);
	sd->internal_ops = &ipipeif_v4l2_internal_ops;
	FUNC5(sd->name, "OMAP4 ISS ISP IPIPEIF", sizeof(sd->name));
	sd->grp_id = FUNC0(16);	/* group ID for iss subdevs */
	FUNC7(sd, ipipeif);
	sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;

	pads[IPIPEIF_PAD_SINK].flags = MEDIA_PAD_FL_SINK;
	pads[IPIPEIF_PAD_SOURCE_ISIF_SF].flags = MEDIA_PAD_FL_SOURCE;
	pads[IPIPEIF_PAD_SOURCE_VP].flags = MEDIA_PAD_FL_SOURCE;

	me->ops = &ipipeif_media_ops;
	ret = FUNC3(me, IPIPEIF_PADS_NUM, pads);
	if (ret < 0)
		return ret;

	FUNC2(sd, NULL);

	ipipeif->video_out.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
	ipipeif->video_out.ops = &ipipeif_video_ops;
	ipipeif->video_out.iss = FUNC6(ipipeif);
	ipipeif->video_out.capture_mem = FUNC1(4096 * 4096) * 3;
	ipipeif->video_out.bpl_alignment = 32;
	ipipeif->video_out.bpl_zero_padding = 1;
	ipipeif->video_out.bpl_max = 0x1ffe0;

	return FUNC4(&ipipeif->video_out, "ISP IPIPEIF");
}