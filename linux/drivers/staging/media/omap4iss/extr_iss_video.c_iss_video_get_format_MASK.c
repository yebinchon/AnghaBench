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
struct iss_video_fh {struct v4l2_format format; } ;
struct iss_video {scalar_t__ type; int /*<<< orphan*/  mutex; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct iss_video_fh* FUNC2 (void*) ; 
 struct iss_video* FUNC3 (struct file*) ; 

__attribute__((used)) static int
FUNC4(struct file *file, void *fh, struct v4l2_format *format)
{
	struct iss_video_fh *vfh = FUNC2(fh);
	struct iss_video *video = FUNC3(file);

	if (format->type != video->type)
		return -EINVAL;

	FUNC0(&video->mutex);
	*format = vfh->format;
	FUNC1(&video->mutex);

	return 0;
}