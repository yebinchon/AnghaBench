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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ fc_trc_flag ; 
 int /*<<< orphan*/ * fnic_stats_debugfs_root ; 
 int /*<<< orphan*/ * fnic_trace_debugfs_root ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

void FUNC2(void)
{
	FUNC0(fnic_stats_debugfs_root);
	fnic_stats_debugfs_root = NULL;

	FUNC0(fnic_trace_debugfs_root);
	fnic_trace_debugfs_root = NULL;

	if (fc_trc_flag)
		FUNC1(fc_trc_flag);
}