
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct nvme_ctrl {int dummy; } ;
struct TYPE_2__ {scalar_t__ bar; } ;


 TYPE_1__* to_nvme_dev (struct nvme_ctrl*) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static int nvme_pci_reg_write32(struct nvme_ctrl *ctrl, u32 off, u32 val)
{
 writel(val, to_nvme_dev(ctrl)->bar + off);
 return 0;
}
