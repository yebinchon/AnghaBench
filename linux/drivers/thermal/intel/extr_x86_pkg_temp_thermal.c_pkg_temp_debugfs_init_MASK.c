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
 int /*<<< orphan*/  S_IRUGO ; 
 int /*<<< orphan*/  debugfs ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pkg_interrupt_cnt ; 
 int /*<<< orphan*/  pkg_work_cnt ; 

__attribute__((used)) static void FUNC2(void)
{
	debugfs = FUNC0("pkg_temp_thermal", NULL);

	FUNC1("pkg_thres_interrupt", S_IRUGO, debugfs,
			   &pkg_interrupt_cnt);
	FUNC1("pkg_thres_work", S_IRUGO, debugfs,
			   &pkg_work_cnt);
}