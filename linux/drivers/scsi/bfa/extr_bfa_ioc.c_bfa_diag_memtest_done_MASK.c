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
struct TYPE_2__ {int /*<<< orphan*/  smem_page_start; int /*<<< orphan*/  host_page_num_fn; int /*<<< orphan*/  smem_pg0; } ;
struct bfa_ioc_s {TYPE_1__ ioc_regs; } ;
struct bfa_diag_s {scalar_t__ block; int /*<<< orphan*/  status; int /*<<< orphan*/  cbarg; int /*<<< orphan*/  (* cbfn ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;scalar_t__ timer_active; struct bfa_diag_memtest_result* result; struct bfa_ioc_s* ioc; } ;
struct bfa_diag_memtest_result {scalar_t__ status; scalar_t__ addr; scalar_t__ exp; scalar_t__ act; scalar_t__ err_status; scalar_t__ err_status1; scalar_t__ err_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_STATUS_MEMTEST_FAILED ; 
 int /*<<< orphan*/  BFA_STATUS_OK ; 
 int BFI_BOOT_MEMTEST_RES_ADDR ; 
 scalar_t__ BFI_BOOT_MEMTEST_RES_SIG ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc_s*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_diag_s*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(void *cbarg)
{
	struct bfa_diag_s *diag = cbarg;
	struct bfa_ioc_s  *ioc = diag->ioc;
	struct bfa_diag_memtest_result *res = diag->result;
	u32	loff = BFI_BOOT_MEMTEST_RES_ADDR;
	u32	pgnum, pgoff, i;

	pgnum = FUNC0(ioc->ioc_regs.smem_pg0, loff);
	pgoff = FUNC1(loff);

	FUNC7(pgnum, ioc->ioc_regs.host_page_num_fn);

	for (i = 0; i < (sizeof(struct bfa_diag_memtest_result) /
			 sizeof(u32)); i++) {
		/* read test result from smem */
		*((u32 *) res + i) =
			FUNC3(ioc->ioc_regs.smem_page_start, loff);
		loff += sizeof(u32);
	}

	/* Reset IOC fwstates to BFI_IOC_UNINIT */
	FUNC2(ioc);

	res->status = FUNC6(res->status);
	FUNC4(diag, res->status);

	if (res->status == BFI_BOOT_MEMTEST_RES_SIG)
		diag->status = BFA_STATUS_OK;
	else {
		diag->status = BFA_STATUS_MEMTEST_FAILED;
		res->addr = FUNC6(res->addr);
		res->exp = FUNC6(res->exp);
		res->act = FUNC6(res->act);
		res->err_status = FUNC6(res->err_status);
		res->err_status1 = FUNC6(res->err_status1);
		res->err_addr = FUNC6(res->err_addr);
		FUNC4(diag, res->addr);
		FUNC4(diag, res->exp);
		FUNC4(diag, res->act);
		FUNC4(diag, res->err_status);
		FUNC4(diag, res->err_status1);
		FUNC4(diag, res->err_addr);
	}
	diag->timer_active = 0;
	diag->cbfn(diag->cbarg, diag->status);
	diag->block = 0;
}