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
struct TYPE_2__ {int /*<<< orphan*/ * stat2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int HALF_QUEUES ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* qmgr_regs ; 

__attribute__((used)) static int FUNC2(unsigned int queue)
{
	FUNC0(queue >= HALF_QUEUES);
	return (FUNC1(&qmgr_regs->stat2[queue >> 4])
		>> ((queue & 0xF) << 1)) & 0x3;
}