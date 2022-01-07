
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct nvme_ctrl {int dummy; } ;
struct TYPE_2__ {scalar_t__ bar; } ;


 scalar_t__ readl (scalar_t__) ;
 TYPE_1__* to_nvme_dev (struct nvme_ctrl*) ;

__attribute__((used)) static int nvme_pci_reg_read32(struct nvme_ctrl *ctrl, u32 off, u32 *val)
{
 *val = readl(to_nvme_dev(ctrl)->bar + off);
 return 0;
}
