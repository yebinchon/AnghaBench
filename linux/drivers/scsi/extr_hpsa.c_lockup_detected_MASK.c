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
typedef  int /*<<< orphan*/  u32 ;
struct ctlr_info {int /*<<< orphan*/  lockup_detected; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static u32 FUNC3(struct ctlr_info *h)
{
	int cpu;
	u32 rc, *lockup_detected;

	cpu = FUNC0();
	lockup_detected = FUNC1(h->lockup_detected, cpu);
	rc = *lockup_detected;
	FUNC2();
	return rc;
}