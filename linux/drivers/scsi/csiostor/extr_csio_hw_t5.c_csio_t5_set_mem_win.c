
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u32 ;
struct csio_hw {int dummy; } ;


 int BIR_V (int ) ;
 int MEMWIN_APERTURE ;
 int MEMWIN_BASE ;
 int PCIE_MEM_ACCESS_BASE_WIN_A ;
 int PCIE_MEM_ACCESS_REG (int ,int ) ;
 int WINDOW_V (scalar_t__) ;
 int csio_rd_reg32 (struct csio_hw*,int ) ;
 int csio_wr_reg32 (struct csio_hw*,int,int ) ;
 scalar_t__ ilog2 (int ) ;

__attribute__((used)) static int
csio_t5_set_mem_win(struct csio_hw *hw, uint32_t win)
{
 u32 mem_win_base;
 mem_win_base = MEMWIN_BASE;






 csio_wr_reg32(hw, mem_win_base | BIR_V(0) |
     WINDOW_V(ilog2(MEMWIN_APERTURE) - 10),
     PCIE_MEM_ACCESS_REG(PCIE_MEM_ACCESS_BASE_WIN_A, win));
 csio_rd_reg32(hw,
        PCIE_MEM_ACCESS_REG(PCIE_MEM_ACCESS_BASE_WIN_A, win));

 return 0;
}
