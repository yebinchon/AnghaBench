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
 int /*<<< orphan*/  cal_data ; 
 int /*<<< orphan*/  debug_dir ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  powerclamp_debug_fops ; 

__attribute__((used)) static inline void FUNC2(void)
{
	debug_dir = FUNC0("intel_powerclamp", NULL);

	FUNC1("powerclamp_calib", S_IRUGO, debug_dir, cal_data,
			    &powerclamp_debug_fops);
}