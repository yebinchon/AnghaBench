#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct v4l2_ctrl_handler {int error; } ;
struct TYPE_12__ {int /*<<< orphan*/  function; int /*<<< orphan*/ * ops; } ;
struct TYPE_11__ {int flags; TYPE_6__ entity; struct v4l2_ctrl_handler* ctrl_handler; int /*<<< orphan*/  name; int /*<<< orphan*/ * internal_ops; } ;
struct imgu_v4l2_subdev {unsigned int pipe; TYPE_3__ subdev; int /*<<< orphan*/  ctrl; int /*<<< orphan*/  running_mode; TYPE_7__* subdev_pads; struct v4l2_ctrl_handler ctrl_handler; } ;
struct imgu_media_pipe {TYPE_1__* nodes; } ;
struct imgu_device {TYPE_2__* pci_dev; int /*<<< orphan*/  v4l2_dev; struct imgu_media_pipe* imgu_pipe; } ;
struct TYPE_13__ {int /*<<< orphan*/  flags; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;
struct TYPE_9__ {scalar_t__ output; } ;

/* Variables and functions */
 char* IMGU_NAME ; 
 int IMGU_NODE_NUM ; 
 int /*<<< orphan*/  IPU3_RUNNING_MODE_VIDEO ; 
 int /*<<< orphan*/  MEDIA_ENT_F_PROC_VIDEO_STATISTICS ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SINK ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SOURCE ; 
 int V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int V4L2_SUBDEV_FL_HAS_EVENTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  imgu_media_ops ; 
 int /*<<< orphan*/  imgu_subdev_ctrl_mode ; 
 int /*<<< orphan*/  imgu_subdev_internal_ops ; 
 int /*<<< orphan*/  imgu_subdev_ops ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int FUNC3 (TYPE_6__*,int,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_ctrl_handler*) ; 
 int /*<<< orphan*/  FUNC6 (struct v4l2_ctrl_handler*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,struct imgu_device*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct imgu_device *imgu,
				     struct imgu_v4l2_subdev *imgu_sd,
				     unsigned int pipe)
{
	int i, r;
	struct v4l2_ctrl_handler *hdl = &imgu_sd->ctrl_handler;
	struct imgu_media_pipe *imgu_pipe = &imgu->imgu_pipe[pipe];

	/* Initialize subdev media entity */
	r = FUNC3(&imgu_sd->subdev.entity, IMGU_NODE_NUM,
				   imgu_sd->subdev_pads);
	if (r) {
		FUNC1(&imgu->pci_dev->dev,
			"failed initialize subdev media entity (%d)\n", r);
		return r;
	}
	imgu_sd->subdev.entity.ops = &imgu_media_ops;
	for (i = 0; i < IMGU_NODE_NUM; i++) {
		imgu_sd->subdev_pads[i].flags = imgu_pipe->nodes[i].output ?
			MEDIA_PAD_FL_SINK : MEDIA_PAD_FL_SOURCE;
	}

	/* Initialize subdev */
	FUNC10(&imgu_sd->subdev, &imgu_subdev_ops);
	imgu_sd->subdev.entity.function = MEDIA_ENT_F_PROC_VIDEO_STATISTICS;
	imgu_sd->subdev.internal_ops = &imgu_subdev_internal_ops;
	imgu_sd->subdev.flags = V4L2_SUBDEV_FL_HAS_DEVNODE |
				V4L2_SUBDEV_FL_HAS_EVENTS;
	FUNC4(imgu_sd->subdev.name, sizeof(imgu_sd->subdev.name),
		 "%s %u", IMGU_NAME, pipe);
	FUNC9(&imgu_sd->subdev, imgu);
	FUNC0(&imgu_sd->running_mode, IPU3_RUNNING_MODE_VIDEO);
	FUNC6(hdl, 1);
	imgu_sd->subdev.ctrl_handler = hdl;
	imgu_sd->ctrl = FUNC7(hdl, &imgu_subdev_ctrl_mode, NULL);
	if (hdl->error) {
		r = hdl->error;
		FUNC1(&imgu->pci_dev->dev,
			"failed to create subdev v4l2 ctrl with err %d", r);
		goto fail_subdev;
	}
	r = FUNC8(&imgu->v4l2_dev, &imgu_sd->subdev);
	if (r) {
		FUNC1(&imgu->pci_dev->dev,
			"failed initialize subdev (%d)\n", r);
		goto fail_subdev;
	}

	imgu_sd->pipe = pipe;
	return 0;

fail_subdev:
	FUNC5(imgu_sd->subdev.ctrl_handler);
	FUNC2(&imgu_sd->subdev.entity);

	return r;
}