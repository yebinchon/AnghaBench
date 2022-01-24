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
struct task_struct {unsigned long pid; unsigned long tgid; } ;

/* Variables and functions */
 unsigned long CTX_SWITCH_CODE ; 
 unsigned long CTX_TGID_CODE ; 
 unsigned long ESCAPE_CODE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 

__attribute__((used)) static void
FUNC1(struct task_struct const *task, unsigned long cookie)
{
	FUNC0(ESCAPE_CODE);
	FUNC0(CTX_SWITCH_CODE);
	FUNC0(task->pid);
	FUNC0(cookie);
	/* Another code for daemon back-compat */
	FUNC0(ESCAPE_CODE);
	FUNC0(CTX_TGID_CODE);
	FUNC0(task->tgid);
}