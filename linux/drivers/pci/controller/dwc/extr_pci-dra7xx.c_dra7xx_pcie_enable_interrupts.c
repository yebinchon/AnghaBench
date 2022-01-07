
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dra7xx_pcie {int dummy; } ;


 int dra7xx_pcie_enable_msi_interrupts (struct dra7xx_pcie*) ;
 int dra7xx_pcie_enable_wrapper_interrupts (struct dra7xx_pcie*) ;

__attribute__((used)) static void dra7xx_pcie_enable_interrupts(struct dra7xx_pcie *dra7xx)
{
 dra7xx_pcie_enable_wrapper_interrupts(dra7xx);
 dra7xx_pcie_enable_msi_interrupts(dra7xx);
}
