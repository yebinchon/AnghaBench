
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct altera_pcie {int dummy; } ;


 int altera_pcie_retrain (struct altera_pcie*) ;

__attribute__((used)) static void altera_pcie_host_init(struct altera_pcie *pcie)
{
 altera_pcie_retrain(pcie);
}
