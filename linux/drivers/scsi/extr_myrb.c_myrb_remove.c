
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct myrb_hba {int host; } ;


 int KERN_NOTICE ;
 int MYRB_CMD_FLUSH ;
 int myrb_cleanup (struct myrb_hba*) ;
 int myrb_destroy_mempools (struct myrb_hba*) ;
 int myrb_exec_type3 (struct myrb_hba*,int ,int ) ;
 struct myrb_hba* pci_get_drvdata (struct pci_dev*) ;
 int shost_printk (int ,int ,char*) ;

__attribute__((used)) static void myrb_remove(struct pci_dev *pdev)
{
 struct myrb_hba *cb = pci_get_drvdata(pdev);

 shost_printk(KERN_NOTICE, cb->host, "Flushing Cache...");
 myrb_exec_type3(cb, MYRB_CMD_FLUSH, 0);
 myrb_cleanup(cb);
 myrb_destroy_mempools(cb);
}
