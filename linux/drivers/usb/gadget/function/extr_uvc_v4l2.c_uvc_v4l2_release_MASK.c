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
struct video_device {int dummy; } ;
struct uvc_video {int /*<<< orphan*/  mutex; int /*<<< orphan*/  queue; } ;
struct uvc_file_handle {int /*<<< orphan*/  vfh; struct uvc_video* device; } ;
struct uvc_device {int dummy; } ;
struct file {int /*<<< orphan*/ * private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uvc_file_handle*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct uvc_file_handle* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct uvc_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct uvc_video*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct video_device* FUNC9 (struct file*) ; 
 struct uvc_device* FUNC10 (struct video_device*) ; 

__attribute__((used)) static int
FUNC11(struct file *file)
{
	struct video_device *vdev = FUNC9(file);
	struct uvc_device *uvc = FUNC10(vdev);
	struct uvc_file_handle *handle = FUNC3(file->private_data);
	struct uvc_video *video = handle->device;

	FUNC4(uvc);

	FUNC1(&video->mutex);
	FUNC6(video, 0);
	FUNC5(&video->queue);
	FUNC2(&video->mutex);

	file->private_data = NULL;
	FUNC7(&handle->vfh);
	FUNC8(&handle->vfh);
	FUNC0(handle);

	return 0;
}