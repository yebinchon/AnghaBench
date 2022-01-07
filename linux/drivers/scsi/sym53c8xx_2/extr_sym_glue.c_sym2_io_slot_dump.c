
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef int pci_ers_result_t ;


 int PCI_ERS_RESULT_NEED_RESET ;
 struct Scsi_Host* pci_get_drvdata (struct pci_dev*) ;
 int sym_dump_registers (struct Scsi_Host*) ;

__attribute__((used)) static pci_ers_result_t sym2_io_slot_dump(struct pci_dev *pdev)
{
 struct Scsi_Host *shost = pci_get_drvdata(pdev);

 sym_dump_registers(shost);


 return PCI_ERS_RESULT_NEED_RESET;
}
