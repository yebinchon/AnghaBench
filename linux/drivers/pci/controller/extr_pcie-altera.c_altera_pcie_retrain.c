
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct altera_pcie {int root_bus_nr; TYPE_2__* pcie_data; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* get_link_status ) (struct altera_pcie*) ;} ;


 int PCI_EXP_LNKCAP ;
 int PCI_EXP_LNKCAP_SLS ;
 int PCI_EXP_LNKCAP_SLS_2_5GB ;
 int PCI_EXP_LNKCTL ;
 int PCI_EXP_LNKCTL_RL ;
 int PCI_EXP_LNKSTA ;
 int PCI_EXP_LNKSTA_CLS ;
 int PCI_EXP_LNKSTA_CLS_2_5GB ;
 int RP_DEVFN ;
 int altera_read_cap_word (struct altera_pcie*,int ,int ,int ,int*) ;
 int altera_wait_link_retrain (struct altera_pcie*) ;
 int altera_write_cap_word (struct altera_pcie*,int ,int ,int ,int) ;
 int stub1 (struct altera_pcie*) ;

__attribute__((used)) static void altera_pcie_retrain(struct altera_pcie *pcie)
{
 u16 linkcap, linkstat, linkctl;

 if (!pcie->pcie_data->ops->get_link_status(pcie))
  return;





 altera_read_cap_word(pcie, pcie->root_bus_nr, RP_DEVFN, PCI_EXP_LNKCAP,
        &linkcap);
 if ((linkcap & PCI_EXP_LNKCAP_SLS) <= PCI_EXP_LNKCAP_SLS_2_5GB)
  return;

 altera_read_cap_word(pcie, pcie->root_bus_nr, RP_DEVFN, PCI_EXP_LNKSTA,
        &linkstat);
 if ((linkstat & PCI_EXP_LNKSTA_CLS) == PCI_EXP_LNKSTA_CLS_2_5GB) {
  altera_read_cap_word(pcie, pcie->root_bus_nr, RP_DEVFN,
         PCI_EXP_LNKCTL, &linkctl);
  linkctl |= PCI_EXP_LNKCTL_RL;
  altera_write_cap_word(pcie, pcie->root_bus_nr, RP_DEVFN,
          PCI_EXP_LNKCTL, linkctl);

  altera_wait_link_retrain(pcie);
 }
}
