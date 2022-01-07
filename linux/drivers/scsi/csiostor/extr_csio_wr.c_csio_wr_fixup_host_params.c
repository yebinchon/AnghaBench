
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u32 ;
typedef int u16 ;
struct csio_sge {int csio_fl_align; } ;
struct csio_wrm {struct csio_sge sge; } ;
struct csio_hw {int flags; TYPE_1__* pdev; } ;
struct TYPE_3__ {int device; } ;


 int CSIO_HWF_USING_SOFT_PARAMS ;
 int CSIO_HW_CHIP_MASK ;
 int CSIO_SGE_RX_DMA_OFFSET ;
 int CSUM_HAS_PSEUDO_HDR_F ;
 int EGRSTATUSPAGESIZE_F ;
 int EGRSTATUSPAGESIZE_V (int) ;
 int HOSTPAGESIZEPF0_V (int) ;
 int HOSTPAGESIZEPF1_V (int) ;
 int HOSTPAGESIZEPF2_V (int) ;
 int HOSTPAGESIZEPF3_V (int) ;
 int HOSTPAGESIZEPF4_V (int) ;
 int HOSTPAGESIZEPF5_V (int) ;
 int HOSTPAGESIZEPF6_V (int) ;
 int HOSTPAGESIZEPF7_V (int) ;
 int HPZ0_V (int) ;
 int INGPACKBOUNDARY_16B_X ;
 int INGPACKBOUNDARY_64B_X ;
 int INGPACKBOUNDARY_M ;
 int INGPACKBOUNDARY_SHIFT_X ;
 int INGPACKBOUNDARY_V (int) ;
 int INGPADBOUNDARY_32B_X ;
 int INGPADBOUNDARY_M ;
 int INGPADBOUNDARY_V (int) ;
 int L1_CACHE_BYTES ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PCI_EXP_DEVCTL ;
 int PCI_EXP_DEVCTL_PAYLOAD ;
 int PKTSHIFT_M ;
 int PKTSHIFT_V (int ) ;
 int SGE_CONTROL2_A ;
 int SGE_CONTROL_A ;
 int SGE_FL_BUFFER_SIZE0_A ;
 int SGE_FL_BUFFER_SIZE2_A ;
 int SGE_FL_BUFFER_SIZE3_A ;
 int SGE_HOST_PAGE_SIZE_A ;
 int T6_INGPADBOUNDARY_8B_X ;
 int TP_INGRESS_CONFIG_A ;
 int ULP_RX_TDDP_PSZ_A ;
 struct csio_wrm* csio_hw_to_wrm (struct csio_hw*) ;
 int csio_hw_tp_wr_bits_indirect (struct csio_hw*,int ,int ,int ) ;
 scalar_t__ csio_is_t5 (int) ;
 int csio_rd_reg32 (struct csio_hw*,int ) ;
 int csio_set_reg_field (struct csio_hw*,int ,int,int) ;
 int csio_wr_reg32 (struct csio_hw*,int,int ) ;
 int fls (int) ;
 scalar_t__ pci_is_pcie (TYPE_1__*) ;
 int pcie_capability_read_word (TYPE_1__*,int ,int*) ;

__attribute__((used)) static void
csio_wr_fixup_host_params(struct csio_hw *hw)
{
 struct csio_wrm *wrm = csio_hw_to_wrm(hw);
 struct csio_sge *sge = &wrm->sge;
 uint32_t clsz = L1_CACHE_BYTES;
 uint32_t s_hps = PAGE_SHIFT - 10;
 uint32_t stat_len = clsz > 64 ? 128 : 64;
 u32 fl_align = clsz < 32 ? 32 : clsz;
 u32 pack_align;
 u32 ingpad, ingpack;

 csio_wr_reg32(hw, HOSTPAGESIZEPF0_V(s_hps) | HOSTPAGESIZEPF1_V(s_hps) |
        HOSTPAGESIZEPF2_V(s_hps) | HOSTPAGESIZEPF3_V(s_hps) |
        HOSTPAGESIZEPF4_V(s_hps) | HOSTPAGESIZEPF5_V(s_hps) |
        HOSTPAGESIZEPF6_V(s_hps) | HOSTPAGESIZEPF7_V(s_hps),
        SGE_HOST_PAGE_SIZE_A);
 pack_align = fl_align;
 if (pci_is_pcie(hw->pdev)) {
  u32 mps, mps_log;
  u16 devctl;





  pcie_capability_read_word(hw->pdev, PCI_EXP_DEVCTL, &devctl);
  mps_log = ((devctl & PCI_EXP_DEVCTL_PAYLOAD) >> 5) + 7;
  mps = 1 << mps_log;
  if (mps > pack_align)
   pack_align = mps;
 }





 if (pack_align <= 16) {
  ingpack = INGPACKBOUNDARY_16B_X;
  fl_align = 16;
 } else if (pack_align == 32) {
  ingpack = INGPACKBOUNDARY_64B_X;
  fl_align = 64;
 } else {
  u32 pack_align_log = fls(pack_align) - 1;

  ingpack = pack_align_log - INGPACKBOUNDARY_SHIFT_X;
  fl_align = pack_align;
 }






 if (csio_is_t5(hw->pdev->device & CSIO_HW_CHIP_MASK))
  ingpad = INGPADBOUNDARY_32B_X;
 else
  ingpad = T6_INGPADBOUNDARY_8B_X;

 csio_set_reg_field(hw, SGE_CONTROL_A,
      INGPADBOUNDARY_V(INGPADBOUNDARY_M) |
      EGRSTATUSPAGESIZE_F,
      INGPADBOUNDARY_V(ingpad) |
      EGRSTATUSPAGESIZE_V(stat_len != 64));
 csio_set_reg_field(hw, SGE_CONTROL2_A,
      INGPACKBOUNDARY_V(INGPACKBOUNDARY_M),
      INGPACKBOUNDARY_V(ingpack));


 csio_wr_reg32(hw, PAGE_SIZE, SGE_FL_BUFFER_SIZE0_A);





 if (hw->flags & CSIO_HWF_USING_SOFT_PARAMS) {
  csio_wr_reg32(hw,
   (csio_rd_reg32(hw, SGE_FL_BUFFER_SIZE2_A) +
   fl_align - 1) & ~(fl_align - 1),
   SGE_FL_BUFFER_SIZE2_A);
  csio_wr_reg32(hw,
   (csio_rd_reg32(hw, SGE_FL_BUFFER_SIZE3_A) +
   fl_align - 1) & ~(fl_align - 1),
   SGE_FL_BUFFER_SIZE3_A);
 }

 sge->csio_fl_align = fl_align;

 csio_wr_reg32(hw, HPZ0_V(PAGE_SHIFT - 12), ULP_RX_TDDP_PSZ_A);


 csio_set_reg_field(hw, SGE_CONTROL_A,
      PKTSHIFT_V(PKTSHIFT_M),
      PKTSHIFT_V(CSIO_SGE_RX_DMA_OFFSET));

 csio_hw_tp_wr_bits_indirect(hw, TP_INGRESS_CONFIG_A,
        CSUM_HAS_PSEUDO_HDR_F, 0);
}
