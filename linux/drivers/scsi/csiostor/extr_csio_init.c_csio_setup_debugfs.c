
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct csio_hw {TYPE_1__* chip_ops; int debugfs_root; } ;
struct TYPE_2__ {int (* chip_dfs_create_ext_mem ) (struct csio_hw*) ;} ;


 int EDRAM0_ENABLE_F ;
 int EDRAM1_ENABLE_F ;
 scalar_t__ IS_ERR_OR_NULL (int ) ;
 int MA_TARGET_MEM_ENABLE_A ;
 int MEM_EDC0 ;
 int MEM_EDC1 ;
 int csio_add_debugfs_mem (struct csio_hw*,char*,int ,int) ;
 int csio_rd_reg32 (struct csio_hw*,int ) ;
 int stub1 (struct csio_hw*) ;

__attribute__((used)) static int csio_setup_debugfs(struct csio_hw *hw)
{
 int i;

 if (IS_ERR_OR_NULL(hw->debugfs_root))
  return -1;

 i = csio_rd_reg32(hw, MA_TARGET_MEM_ENABLE_A);
 if (i & EDRAM0_ENABLE_F)
  csio_add_debugfs_mem(hw, "edc0", MEM_EDC0, 5);
 if (i & EDRAM1_ENABLE_F)
  csio_add_debugfs_mem(hw, "edc1", MEM_EDC1, 5);

 hw->chip_ops->chip_dfs_create_ext_mem(hw);
 return 0;
}
