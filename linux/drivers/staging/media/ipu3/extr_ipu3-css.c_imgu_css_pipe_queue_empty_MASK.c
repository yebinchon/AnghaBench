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
struct imgu_css_pipe {int /*<<< orphan*/  qlock; TYPE_1__* queue; } ;
struct imgu_css {struct imgu_css_pipe* pipes; } ;
struct TYPE_2__ {int /*<<< orphan*/  bufs; } ;

/* Variables and functions */
 int IPU3_CSS_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

bool FUNC3(struct imgu_css *css, unsigned int pipe)
{
	int q;
	struct imgu_css_pipe *css_pipe = &css->pipes[pipe];

	FUNC1(&css_pipe->qlock);
	for (q = 0; q < IPU3_CSS_QUEUES; q++)
		if (!FUNC0(&css_pipe->queue[q].bufs))
			break;
	FUNC2(&css_pipe->qlock);
	return (q == IPU3_CSS_QUEUES);
}