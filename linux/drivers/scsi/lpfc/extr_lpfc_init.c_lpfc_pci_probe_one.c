
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;
struct lpfc_sli_intf {int word0; } ;


 int ENODEV ;
 int LPFC_SLI_INTF ;
 scalar_t__ LPFC_SLI_INTF_REV_SLI4 ;
 scalar_t__ LPFC_SLI_INTF_VALID ;
 scalar_t__ bf_get (int ,struct lpfc_sli_intf*) ;
 int lpfc_pci_probe_one_s3 (struct pci_dev*,struct pci_device_id const*) ;
 int lpfc_pci_probe_one_s4 (struct pci_dev*,struct pci_device_id const*) ;
 int lpfc_sli_intf_slirev ;
 int lpfc_sli_intf_valid ;
 scalar_t__ pci_read_config_dword (struct pci_dev*,int ,int *) ;

__attribute__((used)) static int
lpfc_pci_probe_one(struct pci_dev *pdev, const struct pci_device_id *pid)
{
 int rc;
 struct lpfc_sli_intf intf;

 if (pci_read_config_dword(pdev, LPFC_SLI_INTF, &intf.word0))
  return -ENODEV;

 if ((bf_get(lpfc_sli_intf_valid, &intf) == LPFC_SLI_INTF_VALID) &&
     (bf_get(lpfc_sli_intf_slirev, &intf) == LPFC_SLI_INTF_REV_SLI4))
  rc = lpfc_pci_probe_one_s4(pdev, pid);
 else
  rc = lpfc_pci_probe_one_s3(pdev, pid);

 return rc;
}
