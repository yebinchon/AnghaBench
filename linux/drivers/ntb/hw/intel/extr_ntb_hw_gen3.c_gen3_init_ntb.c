
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int topo; } ;
struct intel_ntb_dev {int db_count; int hwerr_flags; TYPE_3__* self_reg; scalar_t__ self_mmio; scalar_t__ db_valid_mask; TYPE_2__* reg; TYPE_1__ ntb; int * xlat_reg; int * peer_reg; scalar_t__ db_link_mask; int spad_count; int mw_count; } ;
struct TYPE_6__ {scalar_t__ db_mask; } ;
struct TYPE_5__ {int (* db_iowrite ) (scalar_t__,scalar_t__) ;} ;


 scalar_t__ BIT_ULL (int) ;
 int EINVAL ;
 int GEN3_DB_COUNT ;
 scalar_t__ GEN3_DB_LINK_BIT ;
 int GEN3_SPAD_COUNT ;
 scalar_t__ GEN3_SPCICMD_OFFSET ;
 int NTB_HWERR_MSIX_VECTOR32_BAD ;


 int PCI_COMMAND_MASTER ;
 int PCI_COMMAND_MEMORY ;
 int XEON_MW_COUNT ;
 int gen3_b2b_reg ;
 TYPE_3__ gen3_pri_reg ;
 int gen3_sec_xlat ;
 int gen3_setup_b2b_mw (struct intel_ntb_dev*,int *,int *) ;
 int iowrite16 (int,scalar_t__) ;
 int stub1 (scalar_t__,scalar_t__) ;
 int xeon_b2b_dsd_addr ;
 int xeon_b2b_usd_addr ;

__attribute__((used)) static int gen3_init_ntb(struct intel_ntb_dev *ndev)
{
 int rc;


 ndev->mw_count = XEON_MW_COUNT;
 ndev->spad_count = GEN3_SPAD_COUNT;
 ndev->db_count = GEN3_DB_COUNT;
 ndev->db_link_mask = GEN3_DB_LINK_BIT;


 if (ndev->hwerr_flags & NTB_HWERR_MSIX_VECTOR32_BAD)
  ndev->db_link_mask |= BIT_ULL(31);

 switch (ndev->ntb.topo) {
 case 128:
 case 129:
  ndev->self_reg = &gen3_pri_reg;
  ndev->peer_reg = &gen3_b2b_reg;
  ndev->xlat_reg = &gen3_sec_xlat;

  if (ndev->ntb.topo == 128) {
   rc = gen3_setup_b2b_mw(ndev,
           &xeon_b2b_dsd_addr,
           &xeon_b2b_usd_addr);
  } else {
   rc = gen3_setup_b2b_mw(ndev,
           &xeon_b2b_usd_addr,
           &xeon_b2b_dsd_addr);
  }

  if (rc)
   return rc;


  iowrite16(PCI_COMMAND_MEMORY | PCI_COMMAND_MASTER,
     ndev->self_mmio + GEN3_SPCICMD_OFFSET);

  break;

 default:
  return -EINVAL;
 }

 ndev->db_valid_mask = BIT_ULL(ndev->db_count) - 1;

 ndev->reg->db_iowrite(ndev->db_valid_mask,
         ndev->self_mmio +
         ndev->self_reg->db_mask);

 return 0;
}
