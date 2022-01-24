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
struct v4l2_fh {int dummy; } ;
struct iss_video_fh {int /*<<< orphan*/  queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  entity; } ;
struct iss_video {int /*<<< orphan*/  iss; TYPE_1__ video; int /*<<< orphan*/  type; } ;
struct file {struct v4l2_fh* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct file*,struct v4l2_fh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iss_video_fh*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct iss_video_fh* FUNC3 (struct v4l2_fh*) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_fh*) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_fh*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct iss_video* FUNC8 (struct file*) ; 

__attribute__((used)) static int FUNC9(struct file *file)
{
	struct iss_video *video = FUNC8(file);
	struct v4l2_fh *vfh = file->private_data;
	struct iss_video_fh *handle = FUNC3(vfh);

	/* Disable streaming and free the buffers queue resources. */
	FUNC0(file, vfh, video->type);

	FUNC6(&video->video.entity, 0);

	/* Release the videobuf2 queue */
	FUNC7(&handle->queue);

	FUNC4(vfh);
	FUNC5(vfh);
	FUNC1(handle);
	file->private_data = NULL;

	FUNC2(video->iss);

	return 0;
}