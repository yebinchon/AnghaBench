
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int ats_enabled; int ats_stu; scalar_t__ ats_cap; int ats_ref_cnt; scalar_t__ is_virtfn; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ PCI_ATS_CTRL ;
 int PCI_ATS_CTRL_ENABLE ;
 int PCI_ATS_CTRL_STU (int) ;
 int PCI_ATS_MIN_STU ;
 scalar_t__ WARN_ON (int) ;
 int atomic_inc (int *) ;
 struct pci_dev* pci_physfn (struct pci_dev*) ;
 int pci_write_config_word (struct pci_dev*,scalar_t__,int ) ;

int pci_enable_ats(struct pci_dev *dev, int ps)
{
 u16 ctrl;
 struct pci_dev *pdev;

 if (!dev->ats_cap)
  return -EINVAL;

 if (WARN_ON(dev->ats_enabled))
  return -EBUSY;

 if (ps < PCI_ATS_MIN_STU)
  return -EINVAL;





 ctrl = PCI_ATS_CTRL_ENABLE;
 if (dev->is_virtfn) {
  pdev = pci_physfn(dev);
  if (pdev->ats_stu != ps)
   return -EINVAL;

  atomic_inc(&pdev->ats_ref_cnt);
 } else {
  dev->ats_stu = ps;
  ctrl |= PCI_ATS_CTRL_STU(dev->ats_stu - PCI_ATS_MIN_STU);
 }
 pci_write_config_word(dev, dev->ats_cap + PCI_ATS_CTRL, ctrl);

 dev->ats_enabled = 1;
 return 0;
}
