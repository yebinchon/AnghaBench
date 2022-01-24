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
struct isp1362_hcd {int /*<<< orphan*/  addr_reg; } ;
typedef  int /*<<< orphan*/  isp1362_reg_t ;

/* Variables and functions */
 int /*<<< orphan*/  DUMMY_DELAY_ACCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct isp1362_hcd*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct isp1362_hcd *isp1362_hcd, isp1362_reg_t reg)
{
	FUNC1(reg);
	DUMMY_DELAY_ACCESS;
	FUNC3(FUNC0(reg), isp1362_hcd->addr_reg);
	DUMMY_DELAY_ACCESS;
	FUNC2(isp1362_hcd, 1);
}