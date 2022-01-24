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
struct TYPE_2__ {int /*<<< orphan*/  smem_page_start; int /*<<< orphan*/  host_page_num_fn; int /*<<< orphan*/  smem_pg0; } ;
struct bfa_ioc_s {TYPE_1__ ioc_regs; int /*<<< orphan*/  port1_mode; int /*<<< orphan*/  port0_mode; int /*<<< orphan*/  asic_mode; int /*<<< orphan*/  asic_gen; } ;
typedef  scalar_t__ bfa_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 size_t FUNC2 (scalar_t__) ; 
 scalar_t__ BFA_STATUS_OK ; 
 int BFI_FLASH_CHUNK_SZ_WORDS ; 
 int BFI_FLASH_IMAGE_SZ ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ BFI_FWBOOT_DEVMODE_OFF ; 
 scalar_t__ BFI_FWBOOT_ENV_OFF ; 
 scalar_t__ BFI_FWBOOT_ENV_OS ; 
 scalar_t__ BFI_FWBOOT_TYPE_FLASH ; 
 scalar_t__ BFI_FWBOOT_TYPE_NORMAL ; 
 scalar_t__ BFI_FWBOOT_TYPE_OFF ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bfa_ioc_s*) ; 
 scalar_t__ FUNC9 (struct bfa_ioc_s*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct bfa_ioc_s*,scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bfa_status_t
FUNC14(struct bfa_ioc_s *ioc, u32 boot_type,
		    u32 boot_env)
{
	u32 *fwimg;
	u32 pgnum, pgoff;
	u32 loff = 0;
	u32 chunkno = 0;
	u32 i;
	u32 asicmode;
	u32 fwimg_size;
	u32 fwimg_buf[BFI_FLASH_CHUNK_SZ_WORDS];
	bfa_status_t status;

	if (boot_env == BFI_FWBOOT_ENV_OS &&
		boot_type == BFI_FWBOOT_TYPE_FLASH) {
		fwimg_size = BFI_FLASH_IMAGE_SZ/sizeof(u32);

		status = FUNC9(ioc,
			FUNC0(chunkno), fwimg_buf);
		if (status != BFA_STATUS_OK)
			return status;

		fwimg = fwimg_buf;
	} else {
		fwimg_size = FUNC7(FUNC8(ioc));
		fwimg = FUNC6(FUNC8(ioc),
					FUNC0(chunkno));
	}

	FUNC11(ioc, fwimg_size);


	pgnum = FUNC4(ioc->ioc_regs.smem_pg0, loff);
	pgoff = FUNC5(loff);

	FUNC13(pgnum, ioc->ioc_regs.host_page_num_fn);

	for (i = 0; i < fwimg_size; i++) {

		if (FUNC1(i) != chunkno) {
			chunkno = FUNC1(i);

			if (boot_env == BFI_FWBOOT_ENV_OS &&
				boot_type == BFI_FWBOOT_TYPE_FLASH) {
				status = FUNC9(ioc,
					FUNC0(chunkno),
					fwimg_buf);
				if (status != BFA_STATUS_OK)
					return status;

				fwimg = fwimg_buf;
			} else {
				fwimg = FUNC6(
					FUNC8(ioc),
					FUNC0(chunkno));
			}
		}

		/*
		 * write smem
		 */
		FUNC10(ioc->ioc_regs.smem_page_start, loff,
			      fwimg[FUNC2(i)]);

		loff += sizeof(u32);

		/*
		 * handle page offset wrap around
		 */
		loff = FUNC5(loff);
		if (loff == 0) {
			pgnum++;
			FUNC13(pgnum, ioc->ioc_regs.host_page_num_fn);
		}
	}

	FUNC13(FUNC4(ioc->ioc_regs.smem_pg0, 0),
			ioc->ioc_regs.host_page_num_fn);

	/*
	 * Set boot type, env and device mode at the end.
	 */
	if (boot_env == BFI_FWBOOT_ENV_OS &&
		boot_type == BFI_FWBOOT_TYPE_FLASH) {
		boot_type = BFI_FWBOOT_TYPE_NORMAL;
	}
	asicmode = FUNC3(ioc->asic_gen, ioc->asic_mode,
				ioc->port0_mode, ioc->port1_mode);
	FUNC10(ioc->ioc_regs.smem_page_start, BFI_FWBOOT_DEVMODE_OFF,
			FUNC12(asicmode));
	FUNC10(ioc->ioc_regs.smem_page_start, BFI_FWBOOT_TYPE_OFF,
			FUNC12(boot_type));
	FUNC10(ioc->ioc_regs.smem_page_start, BFI_FWBOOT_ENV_OFF,
			FUNC12(boot_env));
	return BFA_STATUS_OK;
}