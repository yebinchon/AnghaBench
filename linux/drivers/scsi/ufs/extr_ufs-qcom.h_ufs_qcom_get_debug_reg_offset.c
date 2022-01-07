
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int major; } ;
struct ufs_qcom_host {TYPE_1__ hw_ver; } ;


 int UFS_CNTLR_2_x_x_VEN_REGS_OFFSET (int ) ;
 int UFS_CNTLR_3_x_x_VEN_REGS_OFFSET (int ) ;

__attribute__((used)) static inline u32
ufs_qcom_get_debug_reg_offset(struct ufs_qcom_host *host, u32 reg)
{
 if (host->hw_ver.major <= 0x02)
  return UFS_CNTLR_2_x_x_VEN_REGS_OFFSET(reg);

 return UFS_CNTLR_3_x_x_VEN_REGS_OFFSET(reg);
}
