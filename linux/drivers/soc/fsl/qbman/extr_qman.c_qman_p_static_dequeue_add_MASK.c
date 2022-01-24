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
typedef  int /*<<< orphan*/  u32 ;
struct qman_portal {int /*<<< orphan*/  sdqcr; int /*<<< orphan*/  p; TYPE_1__* config; } ;
struct TYPE_2__ {int /*<<< orphan*/  pools; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(struct qman_portal *p, u32 pools)
{
	unsigned long irqflags;

	FUNC1(irqflags);
	pools &= p->config->pools;
	p->sdqcr |= pools;
	FUNC2(&p->p, p->sdqcr);
	FUNC0(irqflags);
}