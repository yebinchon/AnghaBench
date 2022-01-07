
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
typedef int ssize_t ;


 char* pci_name (struct pci_dev*) ;
 int sprintf (char*,char*,...) ;

ssize_t pci_p2pdma_enable_show(char *page, struct pci_dev *p2p_dev,
          bool use_p2pdma)
{
 if (!use_p2pdma)
  return sprintf(page, "0\n");

 if (!p2p_dev)
  return sprintf(page, "1\n");

 return sprintf(page, "%s\n", pci_name(p2p_dev));
}
