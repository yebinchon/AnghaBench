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
typedef  int u32 ;
struct isp1362_hcd {int /*<<< orphan*/  data_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMMY_DELAY_ACCESS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC2(struct isp1362_hcd *isp1362_hcd)
{
	u32 val;

#if USE_32BIT
	DUMMY_DELAY_ACCESS;
	val = readl(isp1362_hcd->data_reg);
#else
	DUMMY_DELAY_ACCESS;
	val = (u32)FUNC1(isp1362_hcd->data_reg);
	DUMMY_DELAY_ACCESS;
	val |= (u32)FUNC1(isp1362_hcd->data_reg) << 16;
#endif
	return val;
}