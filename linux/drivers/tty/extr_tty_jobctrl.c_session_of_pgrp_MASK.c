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
struct pid {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PIDTYPE_PGID ; 
 int /*<<< orphan*/  PIDTYPE_PID ; 
 struct task_struct* FUNC0 (struct pid*,int /*<<< orphan*/ ) ; 
 struct pid* FUNC1 (struct task_struct*) ; 

__attribute__((used)) static struct pid *FUNC2(struct pid *pgrp)
{
	struct task_struct *p;
	struct pid *sid = NULL;

	p = FUNC0(pgrp, PIDTYPE_PGID);
	if (p == NULL)
		p = FUNC0(pgrp, PIDTYPE_PID);
	if (p != NULL)
		sid = FUNC1(p);

	return sid;
}