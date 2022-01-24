#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int u32 ;
typedef  int u16 ;
struct csio_sge {int csio_fl_align; } ;
struct csio_wrm {struct csio_sge sge; } ;
struct csio_hw {int flags; TYPE_1__* pdev; } ;
struct TYPE_3__ {int device; } ;

/* Variables and functions */
 int CSIO_HWF_USING_SOFT_PARAMS ; 
 int CSIO_HW_CHIP_MASK ; 
 int /*<<< orphan*/  CSIO_SGE_RX_DMA_OFFSET ; 
 int /*<<< orphan*/  CSUM_HAS_PSEUDO_HDR_F ; 
 int EGRSTATUSPAGESIZE_F ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int INGPACKBOUNDARY_16B_X ; 
 int INGPACKBOUNDARY_64B_X ; 
 int INGPACKBOUNDARY_M ; 
 int INGPACKBOUNDARY_SHIFT_X ; 
 int FUNC10 (int) ; 
 int INGPADBOUNDARY_32B_X ; 
 int INGPADBOUNDARY_M ; 
 int FUNC11 (int) ; 
 int L1_CACHE_BYTES ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  PCI_EXP_DEVCTL ; 
 int PCI_EXP_DEVCTL_PAYLOAD ; 
 int /*<<< orphan*/  PKTSHIFT_M ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SGE_CONTROL2_A ; 
 int /*<<< orphan*/  SGE_CONTROL_A ; 
 int /*<<< orphan*/  SGE_FL_BUFFER_SIZE0_A ; 
 int /*<<< orphan*/  SGE_FL_BUFFER_SIZE2_A ; 
 int /*<<< orphan*/  SGE_FL_BUFFER_SIZE3_A ; 
 int /*<<< orphan*/  SGE_HOST_PAGE_SIZE_A ; 
 int T6_INGPADBOUNDARY_8B_X ; 
 int /*<<< orphan*/  TP_INGRESS_CONFIG_A ; 
 int /*<<< orphan*/  ULP_RX_TDDP_PSZ_A ; 
 struct csio_wrm* FUNC13 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC14 (struct csio_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int) ; 
 int FUNC16 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct csio_hw*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC18 (struct csio_hw*,int,int /*<<< orphan*/ ) ; 
 int FUNC19 (int) ; 
 scalar_t__ FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void
FUNC22(struct csio_hw *hw)
{
	struct csio_wrm *wrm = FUNC13(hw);
	struct csio_sge *sge = &wrm->sge;
	uint32_t clsz = L1_CACHE_BYTES;
	uint32_t s_hps = PAGE_SHIFT - 10;
	uint32_t stat_len = clsz > 64 ? 128 : 64;
	u32 fl_align = clsz < 32 ? 32 : clsz;
	u32 pack_align;
	u32 ingpad, ingpack;

	FUNC18(hw, FUNC1(s_hps) | FUNC2(s_hps) |
		      FUNC3(s_hps) | FUNC4(s_hps) |
		      FUNC5(s_hps) | FUNC6(s_hps) |
		      FUNC7(s_hps) | FUNC8(s_hps),
		      SGE_HOST_PAGE_SIZE_A);

	/* T5 introduced the separation of the Free List Padding and
	 * Packing Boundaries.  Thus, we can select a smaller Padding
	 * Boundary to avoid uselessly chewing up PCIe Link and Memory
	 * Bandwidth, and use a Packing Boundary which is large enough
	 * to avoid false sharing between CPUs, etc.
	 *
	 * For the PCI Link, the smaller the Padding Boundary the
	 * better.  For the Memory Controller, a smaller Padding
	 * Boundary is better until we cross under the Memory Line
	 * Size (the minimum unit of transfer to/from Memory).  If we
	 * have a Padding Boundary which is smaller than the Memory
	 * Line Size, that'll involve a Read-Modify-Write cycle on the
	 * Memory Controller which is never good.
	 */

	/* We want the Packing Boundary to be based on the Cache Line
	 * Size in order to help avoid False Sharing performance
	 * issues between CPUs, etc.  We also want the Packing
	 * Boundary to incorporate the PCI-E Maximum Payload Size.  We
	 * get best performance when the Packing Boundary is a
	 * multiple of the Maximum Payload Size.
	 */
	pack_align = fl_align;
	if (FUNC20(hw->pdev)) {
		u32 mps, mps_log;
		u16 devctl;

		/* The PCIe Device Control Maximum Payload Size field
		 * [bits 7:5] encodes sizes as powers of 2 starting at
		 * 128 bytes.
		 */
		FUNC21(hw->pdev, PCI_EXP_DEVCTL, &devctl);
		mps_log = ((devctl & PCI_EXP_DEVCTL_PAYLOAD) >> 5) + 7;
		mps = 1 << mps_log;
		if (mps > pack_align)
			pack_align = mps;
	}

	/* T5/T6 have a special interpretation of the "0"
	 * value for the Packing Boundary.  This corresponds to 16
	 * bytes instead of the expected 32 bytes.
	 */
	if (pack_align <= 16) {
		ingpack = INGPACKBOUNDARY_16B_X;
		fl_align = 16;
	} else if (pack_align == 32) {
		ingpack = INGPACKBOUNDARY_64B_X;
		fl_align = 64;
	} else {
		u32 pack_align_log = FUNC19(pack_align) - 1;

		ingpack = pack_align_log - INGPACKBOUNDARY_SHIFT_X;
		fl_align = pack_align;
	}

	/* Use the smallest Ingress Padding which isn't smaller than
	 * the Memory Controller Read/Write Size.  We'll take that as
	 * being 8 bytes since we don't know of any system with a
	 * wider Memory Controller Bus Width.
	 */
	if (FUNC15(hw->pdev->device & CSIO_HW_CHIP_MASK))
		ingpad = INGPADBOUNDARY_32B_X;
	else
		ingpad = T6_INGPADBOUNDARY_8B_X;

	FUNC17(hw, SGE_CONTROL_A,
			   FUNC11(INGPADBOUNDARY_M) |
			   EGRSTATUSPAGESIZE_F,
			   FUNC11(ingpad) |
			   FUNC0(stat_len != 64));
	FUNC17(hw, SGE_CONTROL2_A,
			   FUNC10(INGPACKBOUNDARY_M),
			   FUNC10(ingpack));

	/* FL BUFFER SIZE#0 is Page size i,e already aligned to cache line */
	FUNC18(hw, PAGE_SIZE, SGE_FL_BUFFER_SIZE0_A);

	/*
	 * If using hard params, the following will get set correctly
	 * in csio_wr_set_sge().
	 */
	if (hw->flags & CSIO_HWF_USING_SOFT_PARAMS) {
		FUNC18(hw,
			(FUNC16(hw, SGE_FL_BUFFER_SIZE2_A) +
			fl_align - 1) & ~(fl_align - 1),
			SGE_FL_BUFFER_SIZE2_A);
		FUNC18(hw,
			(FUNC16(hw, SGE_FL_BUFFER_SIZE3_A) +
			fl_align - 1) & ~(fl_align - 1),
			SGE_FL_BUFFER_SIZE3_A);
	}

	sge->csio_fl_align = fl_align;

	FUNC18(hw, FUNC9(PAGE_SHIFT - 12), ULP_RX_TDDP_PSZ_A);

	/* default value of rx_dma_offset of the NIC driver */
	FUNC17(hw, SGE_CONTROL_A,
			   FUNC12(PKTSHIFT_M),
			   FUNC12(CSIO_SGE_RX_DMA_OFFSET));

	FUNC14(hw, TP_INGRESS_CONFIG_A,
				    CSUM_HAS_PSEUDO_HDR_F, 0);
}