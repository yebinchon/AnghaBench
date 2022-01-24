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
typedef  unsigned int u32 ;
typedef  int u16 ;

/* Variables and functions */
 unsigned int IO_CFG_SDEST_MASK ; 
 int QMAN_REV30 ; 
 int QM_CHANNEL_SWPORTAL0 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int qman_ip_rev ; 

void FUNC4(u16 channel, unsigned int cpu_idx)
{
	int idx = channel - QM_CHANNEL_SWPORTAL0;
	u32 before, after;

	if ((qman_ip_rev & 0xFF00) >= QMAN_REV30) {
		before = FUNC2(FUNC1(idx));
		/* Each pair of vcpu share the same SRQ(SDEST) */
		cpu_idx /= 2;
		after = (before & (~IO_CFG_SDEST_MASK)) | (cpu_idx << 16);
		FUNC3(FUNC1(idx), after);
	} else {
		before = FUNC2(FUNC0(idx));
		after = (before & (~IO_CFG_SDEST_MASK)) | (cpu_idx << 16);
		FUNC3(FUNC0(idx), after);
	}
}