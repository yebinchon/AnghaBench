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
typedef  int /*<<< orphan*/  u32 ;
struct goldfish_pipe {int /*<<< orphan*/  flags; int /*<<< orphan*/  wake_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_CLOSED_ON_HOST ; 
 int /*<<< orphan*/  BIT_WAKE_ON_READ ; 
 int /*<<< orphan*/  BIT_WAKE_ON_WRITE ; 
 int EIO ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  PIPE_CMD_WAKE_ON_READ ; 
 int /*<<< orphan*/  PIPE_CMD_WAKE_ON_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct goldfish_pipe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct goldfish_pipe *pipe, int is_write)
{
	u32 wake_bit = is_write ? BIT_WAKE_ON_WRITE : BIT_WAKE_ON_READ;

	FUNC1(wake_bit, &pipe->flags);

	/* Tell the emulator we're going to wait for a wake event */
	FUNC0(pipe,
		is_write ? PIPE_CMD_WAKE_ON_WRITE : PIPE_CMD_WAKE_ON_READ);

	while (FUNC2(wake_bit, &pipe->flags)) {
		if (FUNC3(pipe->wake_queue,
					     !FUNC2(wake_bit, &pipe->flags)))
			return -ERESTARTSYS;

		if (FUNC2(BIT_CLOSED_ON_HOST, &pipe->flags))
			return -EIO;
	}

	return 0;
}