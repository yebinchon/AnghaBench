
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {int hba_flag; int cfg_aer_support; int hbalock; int pcidev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int ssize_t ;


 int EINVAL ;
 int EPERM ;
 int HBA_AER_ENABLED ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int isdigit (char const) ;
 int pci_disable_pcie_error_reporting (int ) ;
 int pci_enable_pcie_error_reporting (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int sscanf (char const*,char*,int*) ;
 int strlen (char const*) ;

__attribute__((used)) static ssize_t
lpfc_aer_support_store(struct device *dev, struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct lpfc_vport *vport = (struct lpfc_vport *)shost->hostdata;
 struct lpfc_hba *phba = vport->phba;
 int val = 0, rc = -EINVAL;

 if (!isdigit(buf[0]))
  return -EINVAL;
 if (sscanf(buf, "%i", &val) != 1)
  return -EINVAL;

 switch (val) {
 case 0:
  if (phba->hba_flag & HBA_AER_ENABLED) {
   rc = pci_disable_pcie_error_reporting(phba->pcidev);
   if (!rc) {
    spin_lock_irq(&phba->hbalock);
    phba->hba_flag &= ~HBA_AER_ENABLED;
    spin_unlock_irq(&phba->hbalock);
    phba->cfg_aer_support = 0;
    rc = strlen(buf);
   } else
    rc = -EPERM;
  } else {
   phba->cfg_aer_support = 0;
   rc = strlen(buf);
  }
  break;
 case 1:
  if (!(phba->hba_flag & HBA_AER_ENABLED)) {
   rc = pci_enable_pcie_error_reporting(phba->pcidev);
   if (!rc) {
    spin_lock_irq(&phba->hbalock);
    phba->hba_flag |= HBA_AER_ENABLED;
    spin_unlock_irq(&phba->hbalock);
    phba->cfg_aer_support = 1;
    rc = strlen(buf);
   } else
     rc = -EPERM;
  } else {
   phba->cfg_aer_support = 1;
   rc = strlen(buf);
  }
  break;
 default:
  rc = -EINVAL;
  break;
 }
 return rc;
}
