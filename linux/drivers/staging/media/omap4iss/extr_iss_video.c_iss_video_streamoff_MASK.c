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
struct iss_video_fh {int /*<<< orphan*/  queue; } ;
struct TYPE_5__ {int /*<<< orphan*/  entity; } ;
struct iss_video {int type; int /*<<< orphan*/  stream_lock; TYPE_2__ video; TYPE_3__* iss; int /*<<< orphan*/ * queue; } ;
struct iss_pipeline {int state; int /*<<< orphan*/  ent_enum; int /*<<< orphan*/  lock; } ;
struct file {int dummy; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
typedef  enum iss_pipeline_state { ____Placeholder_iss_pipeline_state } iss_pipeline_state ;
struct TYPE_6__ {TYPE_1__* pdata; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* set_constraints ) (TYPE_3__*,int) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ISS_PIPELINE_QUEUE_INPUT ; 
 int ISS_PIPELINE_QUEUE_OUTPUT ; 
 int ISS_PIPELINE_STREAM_INPUT ; 
 int ISS_PIPELINE_STREAM_OUTPUT ; 
 int /*<<< orphan*/  ISS_PIPELINE_STREAM_STOPPED ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct iss_pipeline*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int) ; 
 struct iss_pipeline* FUNC8 (int /*<<< orphan*/ *) ; 
 struct iss_video_fh* FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 struct iss_video* FUNC12 (struct file*) ; 

__attribute__((used)) static int
FUNC13(struct file *file, void *fh, enum v4l2_buf_type type)
{
	struct iss_video_fh *vfh = FUNC9(fh);
	struct iss_video *video = FUNC12(file);
	struct iss_pipeline *pipe = FUNC8(&video->video.entity);
	enum iss_pipeline_state state;
	unsigned long flags;

	if (type != video->type)
		return -EINVAL;

	FUNC2(&video->stream_lock);

	if (!FUNC10(&vfh->queue))
		goto done;

	/* Update the pipeline state. */
	if (video->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
		state = ISS_PIPELINE_STREAM_OUTPUT
		      | ISS_PIPELINE_QUEUE_OUTPUT;
	else
		state = ISS_PIPELINE_STREAM_INPUT
		      | ISS_PIPELINE_QUEUE_INPUT;

	FUNC5(&pipe->lock, flags);
	pipe->state &= ~state;
	FUNC6(&pipe->lock, flags);

	/* Stop the stream. */
	FUNC4(pipe, ISS_PIPELINE_STREAM_STOPPED);
	FUNC11(&vfh->queue, type);
	video->queue = NULL;

	FUNC0(&pipe->ent_enum);

	if (video->iss->pdata->set_constraints)
		video->iss->pdata->set_constraints(video->iss, false);
	FUNC1(&video->video.entity);

done:
	FUNC3(&video->stream_lock);
	return 0;
}