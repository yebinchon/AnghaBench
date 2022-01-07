
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rp2_card {int fw_loaded; } ;
struct pci_dev {int dummy; } ;


 struct rp2_card* pci_get_drvdata (struct pci_dev*) ;
 int rp2_remove_ports (struct rp2_card*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void rp2_remove(struct pci_dev *pdev)
{
 struct rp2_card *card = pci_get_drvdata(pdev);

 wait_for_completion(&card->fw_loaded);
 rp2_remove_ports(card);
}
