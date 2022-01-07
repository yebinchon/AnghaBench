
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mvumi_hba {TYPE_1__* regs; } ;
struct TYPE_2__ {int arm_to_pciea_drbl_reg; } ;


 unsigned int ioread32 (int ) ;
 int iowrite32 (unsigned int,int ) ;

__attribute__((used)) static unsigned int mvumi_read_fw_status_reg(struct mvumi_hba *mhba)
{
 unsigned int status;

 status = ioread32(mhba->regs->arm_to_pciea_drbl_reg);
 if (status)
  iowrite32(status, mhba->regs->arm_to_pciea_drbl_reg);
 return status;
}
