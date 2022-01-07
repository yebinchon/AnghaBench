
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iproc_pcie {scalar_t__ ep_is_internal; } ;


 int EP_MODE_SURVIVE_PERST ;
 int EP_PERST_SOURCE_SELECT ;
 int IPROC_PCIE_CLK_CTRL ;
 int RC_PCIE_RST_OUTPUT ;
 int iproc_pcie_read_reg (struct iproc_pcie*,int ) ;
 int iproc_pcie_write_reg (struct iproc_pcie*,int ,int) ;
 int msleep (int) ;
 int udelay (int) ;

__attribute__((used)) static void iproc_pcie_perst_ctrl(struct iproc_pcie *pcie, bool assert)
{
 u32 val;






 if (pcie->ep_is_internal)
  return;

 if (assert) {
  val = iproc_pcie_read_reg(pcie, IPROC_PCIE_CLK_CTRL);
  val &= ~EP_PERST_SOURCE_SELECT & ~EP_MODE_SURVIVE_PERST &
   ~RC_PCIE_RST_OUTPUT;
  iproc_pcie_write_reg(pcie, IPROC_PCIE_CLK_CTRL, val);
  udelay(250);
 } else {
  val = iproc_pcie_read_reg(pcie, IPROC_PCIE_CLK_CTRL);
  val |= RC_PCIE_RST_OUTPUT;
  iproc_pcie_write_reg(pcie, IPROC_PCIE_CLK_CTRL, val);
  msleep(100);
 }
}
