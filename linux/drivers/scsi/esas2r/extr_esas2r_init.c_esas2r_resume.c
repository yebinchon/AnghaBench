
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct esas2r_adapter {int flags2; int intr_mode; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;


 int AF2_IRQ_CLAIMED ;
 int ENODEV ;
 int ENOMEM ;
 int ESAS2R_LOG_CRIT ;
 int ESAS2R_LOG_INFO ;
 int PCI_D0 ;
 int esas2r_claim_interrupts (struct esas2r_adapter*) ;
 int esas2r_debug (char*) ;
 int esas2r_disable_chip_interrupts (struct esas2r_adapter*) ;
 int esas2r_enable_chip_interrupts (struct esas2r_adapter*) ;
 int esas2r_kickoff_timer (struct esas2r_adapter*) ;
 int esas2r_log (int ,char*) ;
 int esas2r_log_dev (int ,int *,char*,...) ;
 scalar_t__ esas2r_map_regions (struct esas2r_adapter*) ;
 int esas2r_power_up (struct esas2r_adapter*,int) ;
 int esas2r_setup_interrupts (struct esas2r_adapter*,int ) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_enable_wake (struct pci_dev*,int ,int ) ;
 struct Scsi_Host* pci_get_drvdata (struct pci_dev*) ;
 int pci_restore_state (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 scalar_t__ test_bit (int ,int *) ;

int esas2r_resume(struct pci_dev *pdev)
{
 struct Scsi_Host *host = pci_get_drvdata(pdev);
 struct esas2r_adapter *a = (struct esas2r_adapter *)host->hostdata;
 int rez;

 esas2r_log_dev(ESAS2R_LOG_INFO, &(pdev->dev), "resuming adapter()");
 esas2r_log_dev(ESAS2R_LOG_INFO, &(pdev->dev),
         "pci_set_power_state(PCI_D0) "
         "called");
 pci_set_power_state(pdev, PCI_D0);
 esas2r_log_dev(ESAS2R_LOG_INFO, &(pdev->dev),
         "pci_enable_wake(PCI_D0, 0) "
         "called");
 pci_enable_wake(pdev, PCI_D0, 0);
 esas2r_log_dev(ESAS2R_LOG_INFO, &(pdev->dev),
         "pci_restore_state() called");
 pci_restore_state(pdev);
 esas2r_log_dev(ESAS2R_LOG_INFO, &(pdev->dev),
         "pci_enable_device() called");
 rez = pci_enable_device(pdev);
 pci_set_master(pdev);

 if (!a) {
  rez = -ENODEV;
  goto error_exit;
 }

 if (esas2r_map_regions(a) != 0) {
  esas2r_log(ESAS2R_LOG_CRIT, "could not re-map PCI regions!");
  rez = -ENOMEM;
  goto error_exit;
 }


 esas2r_setup_interrupts(a, a->intr_mode);





 esas2r_disable_chip_interrupts(a);
 if (!esas2r_power_up(a, 1)) {
  esas2r_debug("yikes, esas2r_power_up failed");
  rez = -ENOMEM;
  goto error_exit;
 }

 esas2r_claim_interrupts(a);

 if (test_bit(AF2_IRQ_CLAIMED, &a->flags2)) {




  esas2r_enable_chip_interrupts(a);
  esas2r_kickoff_timer(a);
 } else {
  esas2r_debug("yikes, unable to claim IRQ");
  esas2r_log(ESAS2R_LOG_CRIT, "could not re-claim IRQ!");
  rez = -ENOMEM;
  goto error_exit;
 }

error_exit:
 esas2r_log_dev(ESAS2R_LOG_CRIT, &(pdev->dev), "esas2r_resume(): %d",
         rez);
 return rez;
}
