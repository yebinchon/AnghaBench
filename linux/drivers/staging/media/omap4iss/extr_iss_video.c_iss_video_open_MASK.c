#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct vb2_queue {int io_modes; int buf_struct_size; int /*<<< orphan*/  dev; int /*<<< orphan*/  timestamp_flags; int /*<<< orphan*/ * mem_ops; int /*<<< orphan*/ * ops; struct iss_video_fh* drv_priv; int /*<<< orphan*/  type; } ;
struct TYPE_6__ {int denominator; } ;
struct TYPE_9__ {int /*<<< orphan*/  type; } ;
struct iss_video_fh {int /*<<< orphan*/  vfh; struct iss_video* video; TYPE_1__ timeperframe; TYPE_5__ format; struct vb2_queue queue; } ;
struct TYPE_7__ {int /*<<< orphan*/  entity; } ;
struct iss_video {int /*<<< orphan*/  type; TYPE_3__* iss; TYPE_2__ video; } ;
struct iss_buffer {int dummy; } ;
struct file {int /*<<< orphan*/ * private_data; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ; 
 int VB2_DMABUF ; 
 int VB2_MMAP ; 
 int /*<<< orphan*/  iss_video_vb2ops ; 
 int /*<<< orphan*/  FUNC0 (struct iss_video_fh*) ; 
 struct iss_video_fh* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  vb2_dma_contig_memops ; 
 int FUNC10 (struct vb2_queue*) ; 
 struct iss_video* FUNC11 (struct file*) ; 

__attribute__((used)) static int FUNC12(struct file *file)
{
	struct iss_video *video = FUNC11(file);
	struct iss_video_fh *handle;
	struct vb2_queue *q;
	int ret = 0;

	handle = FUNC1(sizeof(*handle), GFP_KERNEL);
	if (!handle)
		return -ENOMEM;

	FUNC8(&handle->vfh, &video->video);
	FUNC5(&handle->vfh);

	/* If this is the first user, initialise the pipeline. */
	if (!FUNC3(video->iss)) {
		ret = -EBUSY;
		goto done;
	}

	ret = FUNC9(&video->video.entity, 1);
	if (ret < 0) {
		FUNC4(video->iss);
		goto done;
	}

	q = &handle->queue;

	q->type = video->type;
	q->io_modes = VB2_MMAP | VB2_DMABUF;
	q->drv_priv = handle;
	q->ops = &iss_video_vb2ops;
	q->mem_ops = &vb2_dma_contig_memops;
	q->buf_struct_size = sizeof(struct iss_buffer);
	q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
	q->dev = video->iss->dev;

	ret = FUNC10(q);
	if (ret) {
		FUNC4(video->iss);
		goto done;
	}

	FUNC2(&handle->format, 0, sizeof(handle->format));
	handle->format.type = video->type;
	handle->timeperframe.denominator = 1;

	handle->video = video;
	file->private_data = &handle->vfh;

done:
	if (ret < 0) {
		FUNC6(&handle->vfh);
		FUNC7(&handle->vfh);
		FUNC0(handle);
	}

	return ret;
}