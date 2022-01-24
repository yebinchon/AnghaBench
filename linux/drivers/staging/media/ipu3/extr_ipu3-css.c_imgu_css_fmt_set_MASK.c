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
struct v4l2_rect {int dummy; } ;
struct v4l2_pix_format_mplane {int dummy; } ;
struct imgu_css_pipe {struct v4l2_rect* rect; int /*<<< orphan*/ * queue; } ;
struct imgu_css {struct imgu_css_pipe* pipes; } ;
typedef  int /*<<< orphan*/  rect_data ;

/* Variables and functions */
 int EINVAL ; 
 int IPU3_CSS_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IPU3_CSS_RECTS ; 
 int FUNC1 (struct imgu_css*,struct v4l2_pix_format_mplane**,struct v4l2_rect**,unsigned int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct v4l2_pix_format_mplane*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_rect*,int /*<<< orphan*/ ,int) ; 

int FUNC4(struct imgu_css *css,
		     struct v4l2_pix_format_mplane *fmts[IPU3_CSS_QUEUES],
		     struct v4l2_rect *rects[IPU3_CSS_RECTS],
		     unsigned int pipe)
{
	struct v4l2_rect rect_data[IPU3_CSS_RECTS];
	struct v4l2_rect *all_rects[IPU3_CSS_RECTS];
	int i, r;
	struct imgu_css_pipe *css_pipe = &css->pipes[pipe];

	for (i = 0; i < IPU3_CSS_RECTS; i++) {
		if (rects[i])
			rect_data[i] = *rects[i];
		else
			FUNC3(&rect_data[i], 0, sizeof(rect_data[i]));
		all_rects[i] = &rect_data[i];
	}
	r = FUNC1(css, fmts, all_rects, pipe);
	if (r < 0)
		return r;

	for (i = 0; i < IPU3_CSS_QUEUES; i++)
		if (FUNC2(&css_pipe->queue[i], fmts[i],
					FUNC0(i)))
			return -EINVAL;
	for (i = 0; i < IPU3_CSS_RECTS; i++) {
		css_pipe->rect[i] = rect_data[i];
		if (rects[i])
			*rects[i] = rect_data[i];
	}

	return 0;
}