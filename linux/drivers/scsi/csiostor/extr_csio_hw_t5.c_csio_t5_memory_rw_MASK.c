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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int u32 ;
struct csio_hw {int /*<<< orphan*/  pfn; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FUNC0 (void*) ; 
 int EINVAL ; 
 int FUNC1 (void*) ; 
 int MA_EDRAM0_BAR_A ; 
 int MA_EXT_MEMORY_BAR_A ; 
 int MEM_MC0 ; 
 int MEM_MC1 ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  PCIE_MEM_ACCESS_BASE_WIN_A ; 
 int /*<<< orphan*/  PCIE_MEM_ACCESS_OFFSET_A ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct csio_hw*,char*,int,int,...) ; 
 void* FUNC7 (struct csio_hw*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct csio_hw*,int,int) ; 

__attribute__((used)) static int
FUNC9(struct csio_hw *hw, u32 win, int mtype, u32 addr,
		u32 len, uint32_t *buf, int dir)
{
	u32 pos, start, offset, memoffset;
	u32 edc_size, mc_size, win_pf, mem_reg, mem_aperture, mem_base;

	/*
	 * Argument sanity checks ...
	 */
	if ((addr & 0x3) || (len & 0x3))
		return -EINVAL;

	/* Offset into the region of memory which is being accessed
	 * MEM_EDC0 = 0
	 * MEM_EDC1 = 1
	 * MEM_MC   = 2 -- T4
	 * MEM_MC0  = 2 -- For T5
	 * MEM_MC1  = 3 -- For T5
	 */
	edc_size  = FUNC0(FUNC7(hw, MA_EDRAM0_BAR_A));
	if (mtype != MEM_MC1)
		memoffset = (mtype * (edc_size * 1024 * 1024));
	else {
		mc_size = FUNC1(FUNC7(hw,
						       MA_EXT_MEMORY_BAR_A));
		memoffset = (MEM_MC0 * edc_size + mc_size) * 1024 * 1024;
	}

	/* Determine the PCIE_MEM_ACCESS_OFFSET */
	addr = addr + memoffset;

	/*
	 * Each PCI-E Memory Window is programmed with a window size -- or
	 * "aperture" -- which controls the granularity of its mapping onto
	 * adapter memory.  We need to grab that aperture in order to know
	 * how to use the specified window.  The window is also programmed
	 * with the base address of the Memory Window in BAR0's address
	 * space.  For T4 this is an absolute PCI-E Bus Address.  For T5
	 * the address is relative to BAR0.
	 */
	mem_reg = FUNC7(hw,
			FUNC3(PCIE_MEM_ACCESS_BASE_WIN_A, win));
	mem_aperture = 1 << (FUNC5(mem_reg) + 10);
	mem_base = FUNC2(mem_reg) << 10;

	start = addr & ~(mem_aperture-1);
	offset = addr - start;
	win_pf = FUNC4(hw->pfn);

	FUNC6(hw, "csio_t5_memory_rw: mem_reg: 0x%x, mem_aperture: 0x%x\n",
		 mem_reg, mem_aperture);
	FUNC6(hw, "csio_t5_memory_rw: mem_base: 0x%x, mem_offset: 0x%x\n",
		 mem_base, memoffset);
	FUNC6(hw, "csio_t5_memory_rw: start:0x%x, offset:0x%x, win_pf:%d\n",
		 start, offset, win_pf);
	FUNC6(hw, "csio_t5_memory_rw: mtype: %d, addr: 0x%x, len: %d\n",
		 mtype, addr, len);

	for (pos = start; len > 0; pos += mem_aperture, offset = 0) {
		/*
		 * Move PCI-E Memory Window to our current transfer
		 * position.  Read it back to ensure that changes propagate
		 * before we attempt to use the new value.
		 */
		FUNC8(hw, pos | win_pf,
			FUNC3(PCIE_MEM_ACCESS_OFFSET_A, win));
		FUNC7(hw,
			FUNC3(PCIE_MEM_ACCESS_OFFSET_A, win));

		while (offset < mem_aperture && len > 0) {
			if (dir)
				*buf++ = FUNC7(hw, mem_base + offset);
			else
				FUNC8(hw, *buf++, mem_base + offset);

			offset += sizeof(__be32);
			len -= sizeof(__be32);
		}
	}
	return 0;
}