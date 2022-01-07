
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iproc_msi {int nr_eq_region; int nr_msi_region; int nr_irqs; scalar_t__ has_inten_reg; scalar_t__ msi_addr; scalar_t__ eq_dma; } ;
typedef scalar_t__ phys_addr_t ;
typedef scalar_t__ dma_addr_t ;


 int BIT (int) ;
 int EQ_MEM_REGION_SIZE ;
 int IPROC_MSI_CTRL ;
 int IPROC_MSI_EQ_EN ;
 int IPROC_MSI_EQ_PAGE ;
 int IPROC_MSI_EQ_PAGE_UPPER ;
 int IPROC_MSI_INTR_EN ;
 int IPROC_MSI_INTS_EN ;
 int IPROC_MSI_INT_N_EVENT ;
 int IPROC_MSI_PAGE ;
 int IPROC_MSI_PAGE_UPPER ;
 int MSI_MEM_REGION_SIZE ;
 int iproc_msi_read_reg (struct iproc_msi*,int ,int) ;
 int iproc_msi_write_reg (struct iproc_msi*,int ,int,int) ;
 int lower_32_bits (scalar_t__) ;
 int upper_32_bits (scalar_t__) ;

__attribute__((used)) static void iproc_msi_enable(struct iproc_msi *msi)
{
 int i, eq;
 u32 val;


 for (i = 0; i < msi->nr_eq_region; i++) {
  dma_addr_t addr = msi->eq_dma + (i * EQ_MEM_REGION_SIZE);

  iproc_msi_write_reg(msi, IPROC_MSI_EQ_PAGE, i,
        lower_32_bits(addr));
  iproc_msi_write_reg(msi, IPROC_MSI_EQ_PAGE_UPPER, i,
        upper_32_bits(addr));
 }


 for (i = 0; i < msi->nr_msi_region; i++) {
  phys_addr_t addr = msi->msi_addr + (i * MSI_MEM_REGION_SIZE);

  iproc_msi_write_reg(msi, IPROC_MSI_PAGE, i,
        lower_32_bits(addr));
  iproc_msi_write_reg(msi, IPROC_MSI_PAGE_UPPER, i,
        upper_32_bits(addr));
 }

 for (eq = 0; eq < msi->nr_irqs; eq++) {

  val = IPROC_MSI_INTR_EN | IPROC_MSI_INT_N_EVENT |
   IPROC_MSI_EQ_EN;
  iproc_msi_write_reg(msi, IPROC_MSI_CTRL, eq, val);





  if (msi->has_inten_reg) {
   val = iproc_msi_read_reg(msi, IPROC_MSI_INTS_EN, eq);
   val |= BIT(eq);
   iproc_msi_write_reg(msi, IPROC_MSI_INTS_EN, eq, val);
  }
 }
}
