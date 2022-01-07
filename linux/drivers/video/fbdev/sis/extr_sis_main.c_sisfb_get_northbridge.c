
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
 int PCI_VENDOR_ID_SI ;





 struct pci_dev* pci_get_device (int ,unsigned short const,int *) ;

__attribute__((used)) static struct pci_dev *sisfb_get_northbridge(int basechipid)
{
 struct pci_dev *pdev = ((void*)0);
 int nbridgenum, nbridgeidx, i;
 static const unsigned short nbridgeids[] = {
  144,
  142,
  137,
  143,
  141,
  140,
  136,
  138,
  135,
  139,
  134,
  133
 };

 switch(basechipid) {
 default: return ((void*)0);
 }
 for(i = 0; i < nbridgenum; i++) {
  if((pdev = pci_get_device(PCI_VENDOR_ID_SI,
    nbridgeids[nbridgeidx+i], ((void*)0))))
   break;
 }
 return pdev;
}
