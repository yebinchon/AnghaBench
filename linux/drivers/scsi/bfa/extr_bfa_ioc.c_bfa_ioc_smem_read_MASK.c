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
struct TYPE_2__ {int /*<<< orphan*/  ioc_init_sem_reg; int /*<<< orphan*/  host_page_num_fn; int /*<<< orphan*/  smem_pg0; int /*<<< orphan*/  smem_page_start; } ;
struct bfa_ioc_s {TYPE_1__ ioc_regs; } ;
typedef  int /*<<< orphan*/  bfa_status_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ BFA_FALSE ; 
 int /*<<< orphan*/  BFA_STATUS_FAILED ; 
 int /*<<< orphan*/  BFA_STATUS_OK ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_ioc_s*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bfa_status_t
FUNC8(struct bfa_ioc_s *ioc, void *tbuf, u32 soff, u32 sz)
{
	u32 pgnum, loff;
	__be32 r32;
	int i, len;
	u32 *buf = tbuf;

	pgnum = FUNC0(ioc->ioc_regs.smem_pg0, soff);
	loff = FUNC1(soff);
	FUNC4(ioc, pgnum);
	FUNC4(ioc, loff);
	FUNC4(ioc, sz);

	/*
	 *  Hold semaphore to serialize pll init and fwtrc.
	 */
	if (BFA_FALSE == FUNC2(ioc->ioc_regs.ioc_init_sem_reg)) {
		FUNC4(ioc, 0);
		return BFA_STATUS_FAILED;
	}

	FUNC7(pgnum, ioc->ioc_regs.host_page_num_fn);

	len = sz/sizeof(u32);
	FUNC4(ioc, len);
	for (i = 0; i < len; i++) {
		r32 = FUNC3(ioc->ioc_regs.smem_page_start, loff);
		buf[i] = FUNC6(r32);
		loff += sizeof(u32);

		/*
		 * handle page offset wrap around
		 */
		loff = FUNC1(loff);
		if (loff == 0) {
			pgnum++;
			FUNC7(pgnum, ioc->ioc_regs.host_page_num_fn);
		}
	}
	FUNC7(FUNC0(ioc->ioc_regs.smem_pg0, 0),
			ioc->ioc_regs.host_page_num_fn);
	/*
	 *  release semaphore.
	 */
	FUNC5(ioc->ioc_regs.ioc_init_sem_reg);
	FUNC7(1, ioc->ioc_regs.ioc_init_sem_reg);

	FUNC4(ioc, pgnum);
	return BFA_STATUS_OK;
}