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
struct irb {int /*<<< orphan*/  scsw; } ;

/* Variables and functions */
 int DEV_STAT_CHN_END ; 
 int DEV_STAT_DEV_END ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct irb *irb)
{
	if (FUNC1(&irb->scsw) != 0)
		return 1;
	if (FUNC2(&irb->scsw) & ~(DEV_STAT_CHN_END | DEV_STAT_DEV_END))
		return 1;
	if (FUNC0(&irb->scsw) != 0)
		return 1;
	return 0;
}