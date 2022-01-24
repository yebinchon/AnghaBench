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
struct uvc_file_handle {int /*<<< orphan*/  vfh; int /*<<< orphan*/ * device; } ;
struct uvc_device {int /*<<< orphan*/  video; } ;
struct file {int /*<<< orphan*/ * private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct uvc_file_handle* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uvc_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct video_device*) ; 
 struct video_device* FUNC4 (struct file*) ; 
 struct uvc_device* FUNC5 (struct video_device*) ; 

__attribute__((used)) static int
FUNC6(struct file *file)
{
	struct video_device *vdev = FUNC4(file);
	struct uvc_device *uvc = FUNC5(vdev);
	struct uvc_file_handle *handle;

	handle = FUNC0(sizeof(*handle), GFP_KERNEL);
	if (handle == NULL)
		return -ENOMEM;

	FUNC3(&handle->vfh, vdev);
	FUNC2(&handle->vfh);

	handle->device = &uvc->video;
	file->private_data = &handle->vfh;

	FUNC1(uvc);
	return 0;
}