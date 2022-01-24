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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_2__ {int /*<<< orphan*/  has_gcr_regs; } ;

/* Variables and functions */
 int EACCES ; 
 int /*<<< orphan*/  PMC_GCR_TELEM_DEEP_S0IX_REG ; 
 int /*<<< orphan*/  PMC_GCR_TELEM_SHLW_S0IX_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ ipcdev ; 

int FUNC2(u64 *data)
{
	u64 deep, shlw;

	if (!ipcdev.has_gcr_regs)
		return -EACCES;

	deep = FUNC1(PMC_GCR_TELEM_DEEP_S0IX_REG);
	shlw = FUNC1(PMC_GCR_TELEM_SHLW_S0IX_REG);

	*data = FUNC0(deep, shlw);

	return 0;
}