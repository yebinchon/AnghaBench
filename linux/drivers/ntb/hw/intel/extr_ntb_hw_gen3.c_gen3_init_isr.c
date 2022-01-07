
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_ntb_dev {int self_mmio; int hwerr_flags; } ;


 int GEN3_DB_MSIX_VECTOR_COUNT ;
 int GEN3_DB_MSIX_VECTOR_SHIFT ;
 int GEN3_DB_TOTAL_SHIFT ;
 int GEN3_INTVEC_OFFSET ;
 int NTB_HWERR_MSIX_VECTOR32_BAD ;
 int iowrite8 (int,int) ;
 int ndev_init_isr (struct intel_ntb_dev*,int,int,int ,int ) ;

__attribute__((used)) static int gen3_init_isr(struct intel_ntb_dev *ndev)
{
 int i;
 for (i = 0; i < GEN3_DB_MSIX_VECTOR_COUNT; i++)
  iowrite8(i, ndev->self_mmio + GEN3_INTVEC_OFFSET + i);


 if (ndev->hwerr_flags & NTB_HWERR_MSIX_VECTOR32_BAD) {
  iowrite8(GEN3_DB_MSIX_VECTOR_COUNT - 2,
    ndev->self_mmio + GEN3_INTVEC_OFFSET +
    (GEN3_DB_MSIX_VECTOR_COUNT - 1));
 }

 return ndev_init_isr(ndev, GEN3_DB_MSIX_VECTOR_COUNT,
        GEN3_DB_MSIX_VECTOR_COUNT,
        GEN3_DB_MSIX_VECTOR_SHIFT,
        GEN3_DB_TOTAL_SHIFT);
}
