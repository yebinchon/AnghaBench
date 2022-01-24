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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int /*<<< orphan*/  ioc_usage_sem_reg; int /*<<< orphan*/  ioc_usage_reg; } ;
struct bfa_ioc_s {TYPE_1__ ioc_regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc_s*,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct bfa_ioc_s *ioc)
{
	u32 usecnt;

	/*
	 * decrement usage count
	 */
	FUNC1(ioc->ioc_regs.ioc_usage_sem_reg);
	usecnt = FUNC3(ioc->ioc_regs.ioc_usage_reg);
	FUNC0(usecnt <= 0);

	usecnt--;
	FUNC4(usecnt, ioc->ioc_regs.ioc_usage_reg);
	FUNC2(ioc, usecnt);

	FUNC3(ioc->ioc_regs.ioc_usage_sem_reg);
	FUNC4(1, ioc->ioc_regs.ioc_usage_sem_reg);
}