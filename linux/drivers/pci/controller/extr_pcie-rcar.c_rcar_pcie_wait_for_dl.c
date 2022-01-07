
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_pcie {int dummy; } ;


 int DATA_LINK_ACTIVE ;
 int ETIMEDOUT ;
 int PCIETSTR ;
 int cpu_relax () ;
 int rcar_pci_read_reg (struct rcar_pcie*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int rcar_pcie_wait_for_dl(struct rcar_pcie *pcie)
{
 unsigned int timeout = 10000;

 while (timeout--) {
  if ((rcar_pci_read_reg(pcie, PCIETSTR) & DATA_LINK_ACTIVE))
   return 0;

  udelay(5);
  cpu_relax();
 }

 return -ETIMEDOUT;
}
