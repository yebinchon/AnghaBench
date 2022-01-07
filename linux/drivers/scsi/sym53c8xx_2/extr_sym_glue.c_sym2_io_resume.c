
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_data {scalar_t__ io_reset; } ;
struct pci_dev {int dummy; } ;
struct Scsi_Host {int host_lock; } ;


 int complete (scalar_t__) ;
 struct Scsi_Host* pci_get_drvdata (struct pci_dev*) ;
 struct sym_data* shost_priv (struct Scsi_Host*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static void sym2_io_resume(struct pci_dev *pdev)
{
 struct Scsi_Host *shost = pci_get_drvdata(pdev);
 struct sym_data *sym_data = shost_priv(shost);

 spin_lock_irq(shost->host_lock);
 if (sym_data->io_reset)
  complete(sym_data->io_reset);
 spin_unlock_irq(shost->host_lock);
}
