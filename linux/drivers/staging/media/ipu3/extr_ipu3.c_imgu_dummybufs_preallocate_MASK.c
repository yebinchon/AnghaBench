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
struct imgu_media_pipe {TYPE_1__* queues; } ;
struct imgu_device {struct imgu_media_pipe* imgu_pipe; } ;
struct TYPE_2__ {int /*<<< orphan*/  dmap; } ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned int IMGU_QUEUE_MASTER ; 
 unsigned int IPU3_CSS_QUEUES ; 
 size_t* css_queue_buf_size_map ; 
 int /*<<< orphan*/  FUNC0 (struct imgu_device*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct imgu_device*,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct imgu_device *imgu,
				      unsigned int pipe)
{
	unsigned int i;
	size_t size;
	struct imgu_media_pipe *imgu_pipe = &imgu->imgu_pipe[pipe];

	for (i = 0; i < IPU3_CSS_QUEUES; i++) {
		size = css_queue_buf_size_map[i];
		/*
		 * Do not enable dummy buffers for master queue,
		 * always require that real buffers from user are
		 * available.
		 */
		if (i == IMGU_QUEUE_MASTER || size == 0)
			continue;

		if (!FUNC0(imgu,
				       &imgu_pipe->queues[i].dmap, size)) {
			FUNC1(imgu, pipe);
			return -ENOMEM;
		}
	}

	return 0;
}