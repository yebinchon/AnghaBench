
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcie_port {int dummy; } ;
struct kirin_pcie {TYPE_1__* pci; } ;
struct dw_pcie {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;


 int EINVAL ;
 int LINK_WAIT_MAX ;
 int LINK_WAIT_MIN ;
 int PCIE_APP_LTSSM_ENABLE ;
 int PCIE_LTSSM_ENABLE_BIT ;
 int dev_err (struct device*,char*) ;
 int dw_pcie_setup_rc (struct pcie_port*) ;
 int kirin_apb_ctrl_writel (struct kirin_pcie*,int ,int ) ;
 scalar_t__ kirin_pcie_link_up (struct dw_pcie*) ;
 struct dw_pcie* to_dw_pcie_from_pp (struct pcie_port*) ;
 struct kirin_pcie* to_kirin_pcie (struct dw_pcie*) ;
 int usleep_range (int ,int ) ;

__attribute__((used)) static int kirin_pcie_establish_link(struct pcie_port *pp)
{
 struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 struct kirin_pcie *kirin_pcie = to_kirin_pcie(pci);
 struct device *dev = kirin_pcie->pci->dev;
 int count = 0;

 if (kirin_pcie_link_up(pci))
  return 0;

 dw_pcie_setup_rc(pp);


 kirin_apb_ctrl_writel(kirin_pcie, PCIE_LTSSM_ENABLE_BIT,
         PCIE_APP_LTSSM_ENABLE);


 while (!kirin_pcie_link_up(pci)) {
  usleep_range(LINK_WAIT_MIN, LINK_WAIT_MAX);
  count++;
  if (count == 1000) {
   dev_err(dev, "Link Fail\n");
   return -EINVAL;
  }
 }

 return 0;
}
