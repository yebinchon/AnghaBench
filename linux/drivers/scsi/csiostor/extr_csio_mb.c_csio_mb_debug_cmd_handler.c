
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct fw_debug_cmd {int dummy; } ;
struct csio_hw {int pfn; } ;
typedef int __be64 ;


 int CIM_PF_MAILBOX_CTRL_A ;
 int CIM_PF_MAILBOX_DATA_A ;
 int CSIO_MBOWNER_FW ;
 int CSIO_MB_MAX_REGS ;
 int MBINTREQ_F ;
 int MBMSGVALID_F ;
 int MBOWNER_V (int ) ;
 scalar_t__ PF_REG (int ,int ) ;
 int cpu_to_be64 (int ) ;
 int csio_mb_dump_fw_dbg (struct csio_hw*,int *) ;
 int csio_rd_reg32 (struct csio_hw*,scalar_t__) ;
 int csio_rd_reg64 (struct csio_hw*,scalar_t__) ;
 int csio_wr_reg32 (struct csio_hw*,int,scalar_t__) ;
 int wmb () ;

__attribute__((used)) static void
csio_mb_debug_cmd_handler(struct csio_hw *hw)
{
 int i;
 __be64 cmd[CSIO_MB_MAX_REGS];
 uint32_t ctl_reg = PF_REG(hw->pfn, CIM_PF_MAILBOX_CTRL_A);
 uint32_t data_reg = PF_REG(hw->pfn, CIM_PF_MAILBOX_DATA_A);
 int size = sizeof(struct fw_debug_cmd);


 for (i = 0; i < size; i += 8)
  cmd[i / 8] = cpu_to_be64(csio_rd_reg64(hw, data_reg + i));

 csio_mb_dump_fw_dbg(hw, cmd);


 csio_wr_reg32(hw, MBMSGVALID_F | MBINTREQ_F |
        MBOWNER_V(CSIO_MBOWNER_FW), ctl_reg);

 csio_rd_reg32(hw, ctl_reg);
 wmb();
}
