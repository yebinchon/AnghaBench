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
struct poll_table_struct {int dummy; } ;
struct file {int dummy; } ;
typedef  int __poll_t ;
struct TYPE_2__ {int /*<<< orphan*/  spinlock; scalar_t__ flushing; } ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLRDNORM ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 
 int /*<<< orphan*/  speakup_event ; 
 TYPE_1__ speakup_info ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  synth_soft ; 

__attribute__((used)) static __poll_t FUNC5(struct file *fp, struct poll_table_struct *wait)
{
	unsigned long flags;
	__poll_t ret = 0;

	FUNC0(fp, &speakup_event, wait);

	FUNC1(&speakup_info.spinlock, flags);
	if (FUNC4() == &synth_soft &&
	    (!FUNC3() || speakup_info.flushing))
		ret = EPOLLIN | EPOLLRDNORM;
	FUNC2(&speakup_info.spinlock, flags);
	return ret;
}