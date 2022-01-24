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
struct goldfish_pipe_dev {int dummy; } ;
struct goldfish_pipe {int flags; int /*<<< orphan*/  wake_queue; } ;

/* Variables and functions */
 int BIT_CLOSED_ON_HOST ; 
 int /*<<< orphan*/  BIT_WAKE_ON_READ ; 
 int /*<<< orphan*/  BIT_WAKE_ON_WRITE ; 
 int PIPE_WAKE_CLOSED ; 
 int PIPE_WAKE_READ ; 
 int PIPE_WAKE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 struct goldfish_pipe* FUNC1 (struct goldfish_pipe_dev*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(unsigned long dev_addr)
{
	/* Iterate over the signalled pipes and wake them one by one */
	struct goldfish_pipe_dev *dev = (struct goldfish_pipe_dev *)dev_addr;
	struct goldfish_pipe *pipe;
	int wakes;

	while ((pipe = FUNC1(dev, &wakes)) != NULL) {
		if (wakes & PIPE_WAKE_CLOSED) {
			pipe->flags = 1 << BIT_CLOSED_ON_HOST;
		} else {
			if (wakes & PIPE_WAKE_READ)
				FUNC0(BIT_WAKE_ON_READ, &pipe->flags);
			if (wakes & PIPE_WAKE_WRITE)
				FUNC0(BIT_WAKE_ON_WRITE, &pipe->flags);
		}
		/*
		 * wake_up_interruptible() implies a write barrier, so don't
		 * explicitly add another one here.
		 */
		FUNC2(&pipe->wake_queue);
	}
}