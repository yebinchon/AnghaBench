
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct csio_hw {int dummy; } ;


 int EXT_MEM1_ENABLE_F ;
 int EXT_MEM_ENABLE_F ;
 int EXT_MEM_SIZE_G (void*) ;
 int MA_EXT_MEMORY1_BAR_A ;
 int MA_EXT_MEMORY_BAR_A ;
 int MA_TARGET_MEM_ENABLE_A ;
 int MEM_MC0 ;
 int MEM_MC1 ;
 int csio_add_debugfs_mem (struct csio_hw*,char*,int ,int ) ;
 void* csio_rd_reg32 (struct csio_hw*,int ) ;

__attribute__((used)) static void
csio_t5_dfs_create_ext_mem(struct csio_hw *hw)
{
 u32 size;
 int i = csio_rd_reg32(hw, MA_TARGET_MEM_ENABLE_A);

 if (i & EXT_MEM_ENABLE_F) {
  size = csio_rd_reg32(hw, MA_EXT_MEMORY_BAR_A);
  csio_add_debugfs_mem(hw, "mc0", MEM_MC0,
         EXT_MEM_SIZE_G(size));
 }
 if (i & EXT_MEM1_ENABLE_F) {
  size = csio_rd_reg32(hw, MA_EXT_MEMORY1_BAR_A);
  csio_add_debugfs_mem(hw, "mc1", MEM_MC1,
         EXT_MEM_SIZE_G(size));
 }
}
