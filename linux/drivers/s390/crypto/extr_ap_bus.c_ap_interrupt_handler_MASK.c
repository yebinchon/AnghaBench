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
struct airq_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQIO_APB ; 
 int /*<<< orphan*/  ap_suspend_flag ; 
 int /*<<< orphan*/  ap_tasklet ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct airq_struct *airq, bool floating)
{
	FUNC0(IRQIO_APB);
	if (!ap_suspend_flag)
		FUNC1(&ap_tasklet);
}