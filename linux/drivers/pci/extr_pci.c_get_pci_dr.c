
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_devres {int dummy; } ;
struct pci_dev {int dev; } ;


 int GFP_KERNEL ;
 struct pci_devres* devres_alloc (int ,int,int ) ;
 struct pci_devres* devres_find (int *,int ,int *,int *) ;
 struct pci_devres* devres_get (int *,struct pci_devres*,int *,int *) ;
 int pcim_release ;

__attribute__((used)) static struct pci_devres *get_pci_dr(struct pci_dev *pdev)
{
 struct pci_devres *dr, *new_dr;

 dr = devres_find(&pdev->dev, pcim_release, ((void*)0), ((void*)0));
 if (dr)
  return dr;

 new_dr = devres_alloc(pcim_release, sizeof(*new_dr), GFP_KERNEL);
 if (!new_dr)
  return ((void*)0);
 return devres_get(&pdev->dev, new_dr, ((void*)0), ((void*)0));
}
