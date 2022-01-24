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
struct uwb_cnflt_alien {int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 unsigned int UWB_MAX_LOST_BEACONS ; 
 unsigned int UWB_SUPERFRAME_LENGTH_US ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (unsigned int) ; 

__attribute__((used)) static void FUNC2(struct uwb_cnflt_alien *cnflt)
{
	unsigned timeout_us = UWB_MAX_LOST_BEACONS * UWB_SUPERFRAME_LENGTH_US;
	FUNC0(&cnflt->timer, jiffies + FUNC1(timeout_us));
}