
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_4__ {int list; } ;
typedef TYPE_1__ gdth_ha_str ;


 int gdth_remove_one (TYPE_1__*) ;
 int list_del (int *) ;
 int pci_disable_device (struct pci_dev*) ;
 TYPE_1__* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void gdth_pci_remove_one(struct pci_dev *pdev)
{
 gdth_ha_str *ha = pci_get_drvdata(pdev);

 list_del(&ha->list);
 gdth_remove_one(ha);

 pci_disable_device(pdev);
}
