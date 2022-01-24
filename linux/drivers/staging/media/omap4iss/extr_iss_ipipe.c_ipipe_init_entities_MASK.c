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
struct media_entity {int /*<<< orphan*/ * ops; } ;
struct v4l2_subdev {int /*<<< orphan*/  flags; int /*<<< orphan*/  grp_id; int /*<<< orphan*/  name; int /*<<< orphan*/ * internal_ops; struct media_entity entity; } ;
struct media_pad {int /*<<< orphan*/  flags; } ;
struct iss_ipipe_device {int /*<<< orphan*/  input; struct media_pad* pads; struct v4l2_subdev subdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IPIPE_INPUT_NONE ; 
 int /*<<< orphan*/  IPIPE_PADS_NUM ; 
 size_t IPIPE_PAD_SINK ; 
 size_t IPIPE_PAD_SOURCE_VP ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SINK ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SOURCE ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ipipe_media_ops ; 
 int /*<<< orphan*/  ipipe_v4l2_internal_ops ; 
 int /*<<< orphan*/  ipipe_v4l2_ops ; 
 int FUNC2 (struct media_entity*,int /*<<< orphan*/ ,struct media_pad*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*,struct iss_ipipe_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct iss_ipipe_device *ipipe)
{
	struct v4l2_subdev *sd = &ipipe->subdev;
	struct media_pad *pads = ipipe->pads;
	struct media_entity *me = &sd->entity;
	int ret;

	ipipe->input = IPIPE_INPUT_NONE;

	FUNC5(sd, &ipipe_v4l2_ops);
	sd->internal_ops = &ipipe_v4l2_internal_ops;
	FUNC3(sd->name, "OMAP4 ISS ISP IPIPE", sizeof(sd->name));
	sd->grp_id = FUNC0(16);	/* group ID for iss subdevs */
	FUNC4(sd, ipipe);
	sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;

	pads[IPIPE_PAD_SINK].flags = MEDIA_PAD_FL_SINK;
	pads[IPIPE_PAD_SOURCE_VP].flags = MEDIA_PAD_FL_SOURCE;

	me->ops = &ipipe_media_ops;
	ret = FUNC2(me, IPIPE_PADS_NUM, pads);
	if (ret < 0)
		return ret;

	FUNC1(sd, NULL);

	return 0;
}