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
struct v4l2_frmsizeenum {int dummy; } ;
struct soc_camera_host {TYPE_1__* ops; } ;
struct soc_camera_device {int /*<<< orphan*/  parent; } ;
struct file {struct soc_camera_device* private_data; } ;
struct TYPE_2__ {int (* enum_framesizes ) (struct soc_camera_device*,struct v4l2_frmsizeenum*) ;} ;

/* Variables and functions */
 int FUNC0 (struct soc_camera_device*,struct v4l2_frmsizeenum*) ; 
 struct soc_camera_host* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *fh,
					 struct v4l2_frmsizeenum *fsize)
{
	struct soc_camera_device *icd = file->private_data;
	struct soc_camera_host *ici = FUNC1(icd->parent);

	return ici->ops->enum_framesizes(icd, fsize);
}