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
struct task_struct {int dummy; } ;
struct most_channel {struct task_struct* hdm_enqueue_task; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct task_struct*) ; 
 int FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  hdm_enqueue_thread ; 
 struct task_struct* FUNC2 (int /*<<< orphan*/ ,struct most_channel*,char*,int) ; 

__attribute__((used)) static int FUNC3(struct most_channel *c, int channel_id)
{
	struct task_struct *task =
		FUNC2(hdm_enqueue_thread, c, "hdm_fifo_%d",
			    channel_id);

	if (FUNC0(task))
		return FUNC1(task);

	c->hdm_enqueue_task = task;
	return 0;
}