
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ irq; int dev; } ;
struct pch_dev {scalar_t__ mem_base; int mem_size; int * regs; int ptp_clock; } ;


 int dev_info (int *,char*) ;
 int free_irq (scalar_t__,struct pch_dev*) ;
 int iounmap (int *) ;
 int kfree (struct pch_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct pch_dev* pci_get_drvdata (struct pci_dev*) ;
 int ptp_clock_unregister (int ) ;
 int release_mem_region (scalar_t__,int ) ;

__attribute__((used)) static void pch_remove(struct pci_dev *pdev)
{
 struct pch_dev *chip = pci_get_drvdata(pdev);

 ptp_clock_unregister(chip->ptp_clock);

 if (pdev->irq != 0)
  free_irq(pdev->irq, chip);


 if (chip->regs != ((void*)0)) {
  iounmap(chip->regs);
  chip->regs = ((void*)0);
 }

 if (chip->mem_base != 0) {
  release_mem_region(chip->mem_base, chip->mem_size);
  chip->mem_base = 0;
 }
 pci_disable_device(pdev);
 kfree(chip);
 dev_info(&pdev->dev, "complete\n");
}
