
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct iproc_pcie {int dummy; } ;


 int GIC_V3_CFG ;
 int IPROC_PCIE_MSI_ADDR_HI ;
 int IPROC_PCIE_MSI_ADDR_LO ;
 int IPROC_PCIE_MSI_BASE_ADDR ;
 int IPROC_PCIE_MSI_EN_CFG ;
 int IPROC_PCIE_MSI_GIC_MODE ;
 int IPROC_PCIE_MSI_WINDOW_SIZE ;
 int MSI_ENABLE_CFG ;
 int iproc_pcie_read_reg (struct iproc_pcie*,int ) ;
 int iproc_pcie_write_reg (struct iproc_pcie*,int ,int ) ;
 int lower_32_bits (int) ;
 int upper_32_bits (int) ;

__attribute__((used)) static void iproc_pcie_paxc_v2_msi_steer(struct iproc_pcie *pcie, u64 msi_addr,
      bool enable)
{
 u32 val;

 if (!enable) {




  val = iproc_pcie_read_reg(pcie, IPROC_PCIE_MSI_EN_CFG);
  val &= ~MSI_ENABLE_CFG;
  iproc_pcie_write_reg(pcie, IPROC_PCIE_MSI_EN_CFG, val);
  return;
 }







 iproc_pcie_write_reg(pcie, IPROC_PCIE_MSI_BASE_ADDR,
        (u32)(msi_addr >> 13));


 iproc_pcie_write_reg(pcie, IPROC_PCIE_MSI_WINDOW_SIZE, 0);


 val = iproc_pcie_read_reg(pcie, IPROC_PCIE_MSI_GIC_MODE);
 val |= GIC_V3_CFG;
 iproc_pcie_write_reg(pcie, IPROC_PCIE_MSI_GIC_MODE, val);





 msi_addr >>= 2;
 iproc_pcie_write_reg(pcie, IPROC_PCIE_MSI_ADDR_HI,
        upper_32_bits(msi_addr));
 iproc_pcie_write_reg(pcie, IPROC_PCIE_MSI_ADDR_LO,
        lower_32_bits(msi_addr));


 val = iproc_pcie_read_reg(pcie, IPROC_PCIE_MSI_EN_CFG);
 val |= MSI_ENABLE_CFG;
 iproc_pcie_write_reg(pcie, IPROC_PCIE_MSI_EN_CFG, val);
}
