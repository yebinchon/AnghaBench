
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct beiscsi_hba {int dummy; } ;


 int KERN_ERR ;
 int __beiscsi_log (struct beiscsi_hba*,int ,char*) ;
 int beiscsi_enable_port (struct beiscsi_hba*) ;
 scalar_t__ pci_get_drvdata (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;

__attribute__((used)) static void beiscsi_eeh_resume(struct pci_dev *pdev)
{
 struct beiscsi_hba *phba;
 int ret;

 phba = (struct beiscsi_hba *)pci_get_drvdata(pdev);
 pci_save_state(pdev);

 ret = beiscsi_enable_port(phba);
 if (ret)
  __beiscsi_log(phba, KERN_ERR,
         "BM_%d : AER EEH resume failed\n");
}
