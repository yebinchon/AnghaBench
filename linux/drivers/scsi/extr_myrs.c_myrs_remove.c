
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct myrs_hba {int host; } ;


 int KERN_NOTICE ;
 int myrs_cleanup (struct myrs_hba*) ;
 int myrs_destroy_mempools (struct myrs_hba*) ;
 int myrs_flush_cache (struct myrs_hba*) ;
 struct myrs_hba* pci_get_drvdata (struct pci_dev*) ;
 int shost_printk (int ,int ,char*) ;

__attribute__((used)) static void myrs_remove(struct pci_dev *pdev)
{
 struct myrs_hba *cs = pci_get_drvdata(pdev);

 if (cs == ((void*)0))
  return;

 shost_printk(KERN_NOTICE, cs->host, "Flushing Cache...");
 myrs_flush_cache(cs);
 myrs_destroy_mempools(cs);
 myrs_cleanup(cs);
}
