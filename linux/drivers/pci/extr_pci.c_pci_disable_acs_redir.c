
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 int PCI_ACS_CR ;
 scalar_t__ PCI_ACS_CTRL ;
 int PCI_ACS_EC ;
 int PCI_ACS_RR ;
 int PCI_EXT_CAP_ID_ACS ;
 char* disable_acs_redir_param ;
 int pci_dev_specific_disable_acs_redir (struct pci_dev*) ;
 int pci_dev_str_match (struct pci_dev*,char const*,char const**) ;
 int pci_find_ext_capability (struct pci_dev*,int ) ;
 int pci_info (struct pci_dev*,char*) ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,int*) ;
 int pci_warn (struct pci_dev*,char*) ;
 int pci_write_config_word (struct pci_dev*,scalar_t__,int) ;
 int pr_info_once (char*,char*) ;

__attribute__((used)) static void pci_disable_acs_redir(struct pci_dev *dev)
{
 int ret = 0;
 const char *p;
 int pos;
 u16 ctrl;

 if (!disable_acs_redir_param)
  return;

 p = disable_acs_redir_param;
 while (*p) {
  ret = pci_dev_str_match(dev, p, &p);
  if (ret < 0) {
   pr_info_once("PCI: Can't parse disable_acs_redir parameter: %s\n",
         disable_acs_redir_param);

   break;
  } else if (ret == 1) {

   break;
  }

  if (*p != ';' && *p != ',') {

   break;
  }
  p++;
 }

 if (ret != 1)
  return;

 if (!pci_dev_specific_disable_acs_redir(dev))
  return;

 pos = pci_find_ext_capability(dev, PCI_EXT_CAP_ID_ACS);
 if (!pos) {
  pci_warn(dev, "cannot disable ACS redirect for this hardware as it does not have ACS capabilities\n");
  return;
 }

 pci_read_config_word(dev, pos + PCI_ACS_CTRL, &ctrl);


 ctrl &= ~(PCI_ACS_RR | PCI_ACS_CR | PCI_ACS_EC);

 pci_write_config_word(dev, pos + PCI_ACS_CTRL, ctrl);

 pci_info(dev, "disabled ACS redirect\n");
}
