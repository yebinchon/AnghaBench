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
struct goldfish_pipe {int /*<<< orphan*/  lock; } ;
typedef  enum PipeCmdCode { ____Placeholder_PipeCmdCode } PipeCmdCode ;

/* Variables and functions */
 int PIPE_ERROR_IO ; 
 int FUNC0 (struct goldfish_pipe*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct goldfish_pipe *pipe, enum PipeCmdCode cmd)
{
	int status;

	if (FUNC1(&pipe->lock))
		return PIPE_ERROR_IO;
	status = FUNC0(pipe, cmd);
	FUNC2(&pipe->lock);
	return status;
}