
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct nvme_ctrl {int dummy; } ;
struct TYPE_2__ {scalar_t__ bar; } ;


 int lo_hi_readq (scalar_t__) ;
 TYPE_1__* to_nvme_dev (struct nvme_ctrl*) ;

__attribute__((used)) static int nvme_pci_reg_read64(struct nvme_ctrl *ctrl, u32 off, u64 *val)
{
 *val = lo_hi_readq(to_nvme_dev(ctrl)->bar + off);
 return 0;
}
