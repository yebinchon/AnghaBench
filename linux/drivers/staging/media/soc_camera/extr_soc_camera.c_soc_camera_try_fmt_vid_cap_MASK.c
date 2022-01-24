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
struct v4l2_format {scalar_t__ type; } ;
typedef  void soc_camera_device ;
struct file {void* private_data; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (void*,struct v4l2_format*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
				      struct v4l2_format *f)
{
	struct soc_camera_device *icd = file->private_data;

	FUNC0(priv != file->private_data);

	/* Only single-plane capture is supported so far */
	if (f->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
		return -EINVAL;

	/* limit format to hardware capabilities */
	return FUNC1(icd, f);
}