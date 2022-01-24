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
struct v4l2_fh {int /*<<< orphan*/  m2m_ctx; } ;
struct file {struct v4l2_fh* private_data; } ;
struct allegro_channel {int dummy; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;

/* Variables and functions */
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int FUNC0 (struct allegro_channel*) ; 
 struct allegro_channel* FUNC1 (struct v4l2_fh*) ; 
 int FUNC2 (struct file*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
				  enum v4l2_buf_type type)
{
	struct v4l2_fh *fh = file->private_data;
	struct allegro_channel *channel = FUNC1(fh);
	int err;

	if (type == V4L2_BUF_TYPE_VIDEO_CAPTURE) {
		err = FUNC0(channel);
		if (err)
			return err;
	}

	return FUNC2(file, fh->m2m_ctx, type);
}