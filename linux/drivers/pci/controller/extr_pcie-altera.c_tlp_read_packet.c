
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct altera_pcie {int dummy; } ;


 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCIBIOS_SUCCESSFUL ;
 int RP_RXCPL_EOP ;
 int RP_RXCPL_REG0 ;
 int RP_RXCPL_REG1 ;
 int RP_RXCPL_SOP ;
 int RP_RXCPL_STATUS ;
 int TLP_COMP_STATUS (int) ;
 int TLP_LOOP ;
 int cra_readl (struct altera_pcie*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int tlp_read_packet(struct altera_pcie *pcie, u32 *value)
{
 int i;
 bool sop = 0;
 u32 ctrl;
 u32 reg0, reg1;
 u32 comp_status = 1;





 for (i = 0; i < TLP_LOOP; i++) {
  ctrl = cra_readl(pcie, RP_RXCPL_STATUS);
  if ((ctrl & RP_RXCPL_SOP) || (ctrl & RP_RXCPL_EOP) || sop) {
   reg0 = cra_readl(pcie, RP_RXCPL_REG0);
   reg1 = cra_readl(pcie, RP_RXCPL_REG1);

   if (ctrl & RP_RXCPL_SOP) {
    sop = 1;
    comp_status = TLP_COMP_STATUS(reg1);
   }

   if (ctrl & RP_RXCPL_EOP) {
    if (comp_status)
     return PCIBIOS_DEVICE_NOT_FOUND;

    if (value)
     *value = reg0;

    return PCIBIOS_SUCCESSFUL;
   }
  }
  udelay(5);
 }

 return PCIBIOS_DEVICE_NOT_FOUND;
}
