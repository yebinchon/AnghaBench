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
struct uwb_rc {int /*<<< orphan*/  rsv_update_work; int /*<<< orphan*/  rsv_workq; } ;

/* Variables and functions */
 unsigned long UWB_MAS_LENGTH_US ; 
 unsigned long UWB_MAS_PER_ZONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 

void FUNC2(struct uwb_rc *rc)
{
	unsigned long delay_us = UWB_MAS_LENGTH_US * UWB_MAS_PER_ZONE;

	FUNC0(rc->rsv_workq, &rc->rsv_update_work, FUNC1(delay_us));
}