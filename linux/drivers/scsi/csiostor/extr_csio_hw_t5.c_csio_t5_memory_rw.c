
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u32 ;
struct csio_hw {int pfn; } ;
typedef int __be32 ;


 int EDRAM0_SIZE_G (void*) ;
 int EINVAL ;
 int EXT_MEM_SIZE_G (void*) ;
 int MA_EDRAM0_BAR_A ;
 int MA_EXT_MEMORY_BAR_A ;
 int MEM_MC0 ;
 int MEM_MC1 ;
 int PCIEOFST_G (int) ;
 int PCIE_MEM_ACCESS_BASE_WIN_A ;
 int PCIE_MEM_ACCESS_OFFSET_A ;
 int PCIE_MEM_ACCESS_REG (int ,int) ;
 int PFNUM_V (int ) ;
 int WINDOW_V (int) ;
 int csio_dbg (struct csio_hw*,char*,int,int,...) ;
 void* csio_rd_reg32 (struct csio_hw*,int) ;
 int csio_wr_reg32 (struct csio_hw*,int,int) ;

__attribute__((used)) static int
csio_t5_memory_rw(struct csio_hw *hw, u32 win, int mtype, u32 addr,
  u32 len, uint32_t *buf, int dir)
{
 u32 pos, start, offset, memoffset;
 u32 edc_size, mc_size, win_pf, mem_reg, mem_aperture, mem_base;




 if ((addr & 0x3) || (len & 0x3))
  return -EINVAL;
 edc_size = EDRAM0_SIZE_G(csio_rd_reg32(hw, MA_EDRAM0_BAR_A));
 if (mtype != MEM_MC1)
  memoffset = (mtype * (edc_size * 1024 * 1024));
 else {
  mc_size = EXT_MEM_SIZE_G(csio_rd_reg32(hw,
             MA_EXT_MEMORY_BAR_A));
  memoffset = (MEM_MC0 * edc_size + mc_size) * 1024 * 1024;
 }


 addr = addr + memoffset;
 mem_reg = csio_rd_reg32(hw,
   PCIE_MEM_ACCESS_REG(PCIE_MEM_ACCESS_BASE_WIN_A, win));
 mem_aperture = 1 << (WINDOW_V(mem_reg) + 10);
 mem_base = PCIEOFST_G(mem_reg) << 10;

 start = addr & ~(mem_aperture-1);
 offset = addr - start;
 win_pf = PFNUM_V(hw->pfn);

 csio_dbg(hw, "csio_t5_memory_rw: mem_reg: 0x%x, mem_aperture: 0x%x\n",
   mem_reg, mem_aperture);
 csio_dbg(hw, "csio_t5_memory_rw: mem_base: 0x%x, mem_offset: 0x%x\n",
   mem_base, memoffset);
 csio_dbg(hw, "csio_t5_memory_rw: start:0x%x, offset:0x%x, win_pf:%d\n",
   start, offset, win_pf);
 csio_dbg(hw, "csio_t5_memory_rw: mtype: %d, addr: 0x%x, len: %d\n",
   mtype, addr, len);

 for (pos = start; len > 0; pos += mem_aperture, offset = 0) {





  csio_wr_reg32(hw, pos | win_pf,
   PCIE_MEM_ACCESS_REG(PCIE_MEM_ACCESS_OFFSET_A, win));
  csio_rd_reg32(hw,
   PCIE_MEM_ACCESS_REG(PCIE_MEM_ACCESS_OFFSET_A, win));

  while (offset < mem_aperture && len > 0) {
   if (dir)
    *buf++ = csio_rd_reg32(hw, mem_base + offset);
   else
    csio_wr_reg32(hw, *buf++, mem_base + offset);

   offset += sizeof(__be32);
   len -= sizeof(__be32);
  }
 }
 return 0;
}
