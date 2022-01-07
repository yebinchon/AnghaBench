
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_6__ {int pdev; } ;
struct intel_ntb_dev {scalar_t__ lnk_sta; TYPE_3__ ntb; TYPE_2__* self_reg; scalar_t__ self_mmio; int db_link_mask; TYPE_1__* reg; } ;
struct TYPE_5__ {scalar_t__ db_bell; } ;
struct TYPE_4__ {int (* db_iowrite ) (int ,scalar_t__) ;} ;


 int XEON_LINK_STATUS_OFFSET ;
 int pci_read_config_word (int ,int ,scalar_t__*) ;
 int stub1 (int ,scalar_t__) ;

__attribute__((used)) static int xeon_poll_link(struct intel_ntb_dev *ndev)
{
 u16 reg_val;
 int rc;

 ndev->reg->db_iowrite(ndev->db_link_mask,
         ndev->self_mmio +
         ndev->self_reg->db_bell);

 rc = pci_read_config_word(ndev->ntb.pdev,
      XEON_LINK_STATUS_OFFSET, &reg_val);
 if (rc)
  return 0;

 if (reg_val == ndev->lnk_sta)
  return 0;

 ndev->lnk_sta = reg_val;

 return 1;
}
