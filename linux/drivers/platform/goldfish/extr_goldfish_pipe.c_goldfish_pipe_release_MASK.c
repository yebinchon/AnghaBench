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
struct inode {int dummy; } ;
struct goldfish_pipe_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/ ** pipes; } ;
struct goldfish_pipe {size_t id; scalar_t__ command_buffer; struct goldfish_pipe_dev* dev; } ;
struct file {struct goldfish_pipe* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  PIPE_CMD_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct goldfish_pipe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct goldfish_pipe*) ; 
 int /*<<< orphan*/  FUNC3 (struct goldfish_pipe_dev*,struct goldfish_pipe*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *filp)
{
	unsigned long flags;
	struct goldfish_pipe *pipe = filp->private_data;
	struct goldfish_pipe_dev *dev = pipe->dev;

	/* The guest is closing the channel, so tell the emulator right now */
	FUNC1(pipe, PIPE_CMD_CLOSE);

	FUNC4(&dev->lock, flags);
	dev->pipes[pipe->id] = NULL;
	FUNC3(dev, pipe);
	FUNC5(&dev->lock, flags);

	filp->private_data = NULL;
	FUNC0((unsigned long)pipe->command_buffer);
	FUNC2(pipe);
	return 0;
}