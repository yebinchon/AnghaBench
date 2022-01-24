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
struct v4l2_exportbuffer {int dummy; } ;
struct iss_video_fh {int /*<<< orphan*/  queue; } ;
struct file {int dummy; } ;

/* Variables and functions */
 struct iss_video_fh* FUNC0 (void*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct v4l2_exportbuffer*) ; 

__attribute__((used)) static int
FUNC2(struct file *file, void *fh, struct v4l2_exportbuffer *e)
{
	struct iss_video_fh *vfh = FUNC0(fh);

	return FUNC1(&vfh->queue, e);
}