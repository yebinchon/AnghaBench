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
struct irq_info {int refcnt; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (unsigned int) ; 
 struct irq_info* FUNC2 (int) ; 

int FUNC3(unsigned int evtchn)
{
	int irq = FUNC1(evtchn);
	struct irq_info *info;

	if (irq == -1)
		return -ENOENT;

	info = FUNC2(irq);

	if (!info)
		return -ENOENT;

	FUNC0(info->refcnt != -1);

	info->refcnt = 1;

	return 0;
}