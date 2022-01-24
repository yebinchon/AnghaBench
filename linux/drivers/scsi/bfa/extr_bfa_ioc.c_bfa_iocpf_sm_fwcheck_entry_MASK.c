#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct bfi_ioc_image_hdr_s {int /*<<< orphan*/  exec; } ;
struct bfa_iocpf_s {TYPE_2__* ioc; } ;
struct TYPE_9__ {int /*<<< orphan*/  ioc_init_sem_reg; int /*<<< orphan*/  smem_page_start; int /*<<< orphan*/  host_page_num_fn; int /*<<< orphan*/  smem_pg0; } ;
struct TYPE_10__ {TYPE_1__ ioc_regs; } ;

/* Variables and functions */
 scalar_t__ BFI_FWBOOT_TYPE_NORMAL ; 
 int BFI_IOC_UNINIT ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct bfi_ioc_image_hdr_s*) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14(struct bfa_iocpf_s *iocpf)
{
	struct bfi_ioc_image_hdr_s	fwhdr;
	u32	r32, fwstate, pgnum, pgoff, loff = 0;
	int	i;

	/*
	 * Spin on init semaphore to serialize.
	 */
	r32 = FUNC10(iocpf->ioc->ioc_regs.ioc_init_sem_reg);
	while (r32 & 0x1) {
		FUNC12(20);
		r32 = FUNC10(iocpf->ioc->ioc_regs.ioc_init_sem_reg);
	}

	/* h/w sem init */
	fwstate = FUNC3(iocpf->ioc);
	if (fwstate == BFI_IOC_UNINIT) {
		FUNC13(1, iocpf->ioc->ioc_regs.ioc_init_sem_reg);
		goto sem_get;
	}

	FUNC2(iocpf->ioc, &fwhdr);

	if (FUNC11(fwhdr.exec) == BFI_FWBOOT_TYPE_NORMAL) {
		FUNC13(1, iocpf->ioc->ioc_regs.ioc_init_sem_reg);
		goto sem_get;
	}

	/*
	 * Clear fwver hdr
	 */
	pgnum = FUNC0(iocpf->ioc->ioc_regs.smem_pg0, loff);
	pgoff = FUNC1(loff);
	FUNC13(pgnum, iocpf->ioc->ioc_regs.host_page_num_fn);

	for (i = 0; i < sizeof(struct bfi_ioc_image_hdr_s) / sizeof(u32); i++) {
		FUNC8(iocpf->ioc->ioc_regs.smem_page_start, loff, 0);
		loff += sizeof(u32);
	}

	FUNC9(iocpf->ioc, fwstate);
	FUNC9(iocpf->ioc, FUNC11(fwhdr.exec));
	FUNC7(iocpf->ioc, BFI_IOC_UNINIT);
	FUNC6(iocpf->ioc, BFI_IOC_UNINIT);

	/*
	 * Unlock the hw semaphore. Should be here only once per boot.
	 */
	FUNC5(iocpf->ioc);

	/*
	 * unlock init semaphore.
	 */
	FUNC13(1, iocpf->ioc->ioc_regs.ioc_init_sem_reg);

sem_get:
	FUNC4(iocpf->ioc);
}