
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_msi {int * bitmap; int * msi_groups; } ;
struct platform_device {int dummy; } ;


 scalar_t__ CPUHP_PCI_XGENE_DEAD ;
 int cpuhp_remove_state (scalar_t__) ;
 int kfree (int *) ;
 scalar_t__ pci_xgene_online ;
 struct xgene_msi* platform_get_drvdata (struct platform_device*) ;
 int xgene_free_domains (struct xgene_msi*) ;

__attribute__((used)) static int xgene_msi_remove(struct platform_device *pdev)
{
 struct xgene_msi *msi = platform_get_drvdata(pdev);

 if (pci_xgene_online)
  cpuhp_remove_state(pci_xgene_online);
 cpuhp_remove_state(CPUHP_PCI_XGENE_DEAD);

 kfree(msi->msi_groups);

 kfree(msi->bitmap);
 msi->bitmap = ((void*)0);

 xgene_free_domains(msi);

 return 0;
}
