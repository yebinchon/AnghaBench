
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_pcie {int dummy; } ;


 int ETIMEDOUT ;
 int PCIEPHYSR ;
 int PHYRDY ;
 int msleep (int) ;
 int rcar_pci_read_reg (struct rcar_pcie*,int ) ;

__attribute__((used)) static int rcar_pcie_wait_for_phyrdy(struct rcar_pcie *pcie)
{
 unsigned int timeout = 10;

 while (timeout--) {
  if (rcar_pci_read_reg(pcie, PCIEPHYSR) & PHYRDY)
   return 0;

  msleep(5);
 }

 return -ETIMEDOUT;
}
