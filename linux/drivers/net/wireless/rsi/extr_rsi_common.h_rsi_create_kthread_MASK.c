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
typedef  int /*<<< orphan*/  u8 ;
struct rsi_thread {int /*<<< orphan*/  task; int /*<<< orphan*/  thread_done; int /*<<< orphan*/  completion; } ;
struct rsi_common {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void*,struct rsi_common*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC5(struct rsi_common *common,
				     struct rsi_thread *thread,
				     void *func_ptr,
				     u8 *name)
{
	FUNC3(&thread->completion);
	FUNC2(&thread->thread_done, 0);
	thread->task = FUNC4(func_ptr, common, "%s", name);
	if (FUNC0(thread->task))
		return (int)FUNC1(thread->task);

	return 0;
}