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
struct mvumi_hw_regs {unsigned int int_comaout; unsigned int int_comaerr; unsigned int cl_pointer_toggle; int /*<<< orphan*/  outb_copy_baseh; int /*<<< orphan*/  outb_copy_basel; int /*<<< orphan*/  inb_aval_count_baseh; int /*<<< orphan*/  inb_aval_count_basel; int /*<<< orphan*/  enpointa_mask_reg; int /*<<< orphan*/  pciea_to_arm_drbl_reg; int /*<<< orphan*/  pciea_to_arm_msg0; int /*<<< orphan*/  arm_to_pciea_msg1; int /*<<< orphan*/  pciea_to_arm_msg1; int /*<<< orphan*/  arm_to_pciea_msg0; } ;
struct mvumi_hs_page1 {int /*<<< orphan*/  total_pages; } ;
struct mvumi_hs_header {int /*<<< orphan*/  page_code; } ;
struct mvumi_hba {scalar_t__ fw_state; unsigned int list_num_io; int ib_cur_slot; int ob_cur_slot; TYPE_1__* pdev; int /*<<< orphan*/  ob_shadow_phys; int /*<<< orphan*/  ob_shadow; int /*<<< orphan*/  ib_shadow_phys; int /*<<< orphan*/  ib_shadow; int /*<<< orphan*/  hba_total_pages; scalar_t__ handshake_page; int /*<<< orphan*/  handshake_page_phys; struct mvumi_hw_regs* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 unsigned int DRBL_HANDSHAKE ; 
 scalar_t__ FW_STATE_HANDSHAKING ; 
 scalar_t__ FW_STATE_STARTED ; 
 scalar_t__ FW_STATE_STARTING ; 
 unsigned int HANDSHAKE_SIGNATURE ; 
 unsigned int FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  HS_PAGE_FIRM_CAP ; 
 int /*<<< orphan*/  HS_PAGE_TOTAL ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int const) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 
 scalar_t__ HS_STATUS_OK ; 
 int HS_S_ABORT ; 
#define  HS_S_END 133 
#define  HS_S_PAGE_ADDR 132 
#define  HS_S_QUERY_PAGE 131 
#define  HS_S_RESET 130 
#define  HS_S_SEND_PAGE 129 
#define  HS_S_START 128 
 int /*<<< orphan*/  PCI_DEVICE_ID_MARVELL_MV9143 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mvumi_hba*,struct mvumi_hs_header*) ; 
 int /*<<< orphan*/  FUNC10 (struct mvumi_hba*,struct mvumi_hs_header*) ; 
 int /*<<< orphan*/  FUNC11 (struct mvumi_hba*) ; 
 unsigned int FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct mvumi_hba *mhba)
{
	unsigned int hs_state, tmp, hs_fun;
	struct mvumi_hs_header *hs_header;
	struct mvumi_hw_regs *regs = mhba->regs;

	if (mhba->fw_state == FW_STATE_STARTING)
		hs_state = HS_S_START;
	else {
		tmp = FUNC6(regs->arm_to_pciea_msg0);
		hs_state = FUNC0(tmp);
		FUNC4(&mhba->pdev->dev, "handshake state[0x%x].\n", hs_state);
		if (FUNC1(tmp) != HS_STATUS_OK) {
			mhba->fw_state = FW_STATE_STARTING;
			return -1;
		}
	}

	hs_fun = 0;
	switch (hs_state) {
	case HS_S_START:
		mhba->fw_state = FW_STATE_HANDSHAKING;
		FUNC3(hs_fun, HS_STATUS_OK);
		FUNC2(hs_fun, HS_S_RESET);
		FUNC7(HANDSHAKE_SIGNATURE, regs->pciea_to_arm_msg1);
		FUNC7(hs_fun, regs->pciea_to_arm_msg0);
		FUNC7(DRBL_HANDSHAKE, regs->pciea_to_arm_drbl_reg);
		break;

	case HS_S_RESET:
		FUNC7(FUNC8(mhba->handshake_page_phys),
					regs->pciea_to_arm_msg1);
		FUNC7(FUNC12(mhba->handshake_page_phys),
					regs->arm_to_pciea_msg1);
		FUNC3(hs_fun, HS_STATUS_OK);
		FUNC2(hs_fun, HS_S_PAGE_ADDR);
		FUNC7(hs_fun, regs->pciea_to_arm_msg0);
		FUNC7(DRBL_HANDSHAKE, regs->pciea_to_arm_drbl_reg);
		break;

	case HS_S_PAGE_ADDR:
	case HS_S_QUERY_PAGE:
	case HS_S_SEND_PAGE:
		hs_header = (struct mvumi_hs_header *) mhba->handshake_page;
		if (hs_header->page_code == HS_PAGE_FIRM_CAP) {
			mhba->hba_total_pages =
			((struct mvumi_hs_page1 *) hs_header)->total_pages;

			if (mhba->hba_total_pages == 0)
				mhba->hba_total_pages = HS_PAGE_TOTAL-1;
		}

		if (hs_state == HS_S_QUERY_PAGE) {
			if (FUNC10(mhba, hs_header)) {
				FUNC2(hs_fun, HS_S_ABORT);
				return -1;
			}
			if (FUNC11(mhba)) {
				FUNC2(hs_fun, HS_S_ABORT);
				return -1;
			}
		} else if (hs_state == HS_S_PAGE_ADDR) {
			hs_header->page_code = 0;
			mhba->hba_total_pages = HS_PAGE_TOTAL-1;
		}

		if ((hs_header->page_code + 1) <= mhba->hba_total_pages) {
			hs_header->page_code++;
			if (hs_header->page_code != HS_PAGE_FIRM_CAP) {
				FUNC9(mhba, hs_header);
				FUNC2(hs_fun, HS_S_SEND_PAGE);
			} else
				FUNC2(hs_fun, HS_S_QUERY_PAGE);
		} else
			FUNC2(hs_fun, HS_S_END);

		FUNC3(hs_fun, HS_STATUS_OK);
		FUNC7(hs_fun, regs->pciea_to_arm_msg0);
		FUNC7(DRBL_HANDSHAKE, regs->pciea_to_arm_drbl_reg);
		break;

	case HS_S_END:
		/* Set communication list ISR */
		tmp = FUNC6(regs->enpointa_mask_reg);
		tmp |= regs->int_comaout | regs->int_comaerr;
		FUNC7(tmp, regs->enpointa_mask_reg);
		FUNC7(mhba->list_num_io, mhba->ib_shadow);
		/* Set InBound List Available count shadow */
		FUNC7(FUNC8(mhba->ib_shadow_phys),
					regs->inb_aval_count_basel);
		FUNC7(FUNC12(mhba->ib_shadow_phys),
					regs->inb_aval_count_baseh);

		if (mhba->pdev->device == PCI_DEVICE_ID_MARVELL_MV9143) {
			/* Set OutBound List Available count shadow */
			FUNC7((mhba->list_num_io-1) |
							regs->cl_pointer_toggle,
							mhba->ob_shadow);
			FUNC7(FUNC8(mhba->ob_shadow_phys),
							regs->outb_copy_basel);
			FUNC7(FUNC12(mhba->ob_shadow_phys),
							regs->outb_copy_baseh);
		}

		mhba->ib_cur_slot = (mhba->list_num_io - 1) |
							regs->cl_pointer_toggle;
		mhba->ob_cur_slot = (mhba->list_num_io - 1) |
							regs->cl_pointer_toggle;
		mhba->fw_state = FW_STATE_STARTED;

		break;
	default:
		FUNC5(&mhba->pdev->dev, "unknown handshake state [0x%x].\n",
								hs_state);
		return -1;
	}
	return 0;
}