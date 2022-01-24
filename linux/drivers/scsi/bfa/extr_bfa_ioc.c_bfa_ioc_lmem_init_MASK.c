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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  pss_ctl_reg; } ;
struct bfa_ioc_s {TYPE_1__ ioc_regs; } ;

/* Variables and functions */
 int PSS_LMEM_INIT_TIME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (unsigned long) ; 
 int __PSS_LMEM_INIT_DONE ; 
 int __PSS_LMEM_INIT_EN ; 
 int __PSS_LMEM_RESET ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc_s*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct bfa_ioc_s *ioc)
{
	u32	pss_ctl;
	int		i;
#define PSS_LMEM_INIT_TIME  10000

	pss_ctl = FUNC3(ioc->ioc_regs.pss_ctl_reg);
	pss_ctl &= ~__PSS_LMEM_RESET;
	pss_ctl |= __PSS_LMEM_INIT_EN;

	/*
	 * i2c workaround 12.5khz clock
	 */
	pss_ctl |= FUNC1(3UL);
	FUNC4(pss_ctl, ioc->ioc_regs.pss_ctl_reg);

	/*
	 * wait for memory initialization to be complete
	 */
	i = 0;
	do {
		pss_ctl = FUNC3(ioc->ioc_regs.pss_ctl_reg);
		i++;
	} while (!(pss_ctl & __PSS_LMEM_INIT_DONE) && (i < PSS_LMEM_INIT_TIME));

	/*
	 * If memory initialization is not successful, IOC timeout will catch
	 * such failures.
	 */
	FUNC0(!(pss_ctl & __PSS_LMEM_INIT_DONE));
	FUNC2(ioc, pss_ctl);

	pss_ctl &= ~(__PSS_LMEM_INIT_DONE | __PSS_LMEM_INIT_EN);
	FUNC4(pss_ctl, ioc->ioc_regs.pss_ctl_reg);
}