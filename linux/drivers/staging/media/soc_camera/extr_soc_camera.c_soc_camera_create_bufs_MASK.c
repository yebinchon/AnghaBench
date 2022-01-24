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
struct v4l2_create_buffers {int dummy; } ;
struct soc_camera_device {struct file* streamer; int /*<<< orphan*/  vb2_vidq; } ;
struct file {struct soc_camera_device* private_data; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (int /*<<< orphan*/ *,struct v4l2_create_buffers*) ; 

__attribute__((used)) static int FUNC1(struct file *file, void *priv,
			    struct v4l2_create_buffers *create)
{
	struct soc_camera_device *icd = file->private_data;
	int ret;

	if (icd->streamer && icd->streamer != file)
		return -EBUSY;

	ret = FUNC0(&icd->vb2_vidq, create);
	if (!ret)
		icd->streamer = file;
	return ret;
}