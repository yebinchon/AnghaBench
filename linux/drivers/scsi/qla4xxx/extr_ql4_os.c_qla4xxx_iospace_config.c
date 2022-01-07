
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {unsigned long pio_address; unsigned long pio_length; int reg; int pdev; } ;


 int DRIVER_NAME ;
 int ENOMEM ;
 unsigned long IORESOURCE_IO ;
 unsigned long IORESOURCE_MEM ;
 int KERN_ERR ;
 int KERN_WARNING ;
 unsigned long MIN_IOBASE_LEN ;
 int ioremap (unsigned long,unsigned long) ;
 scalar_t__ pci_request_regions (int ,int ) ;
 unsigned long pci_resource_flags (int ,int) ;
 unsigned long pci_resource_len (int ,int) ;
 unsigned long pci_resource_start (int ,int) ;
 int ql4_printk (int ,struct scsi_qla_host*,char*) ;

int qla4xxx_iospace_config(struct scsi_qla_host *ha)
{
 unsigned long pio, pio_len, pio_flags;
 unsigned long mmio, mmio_len, mmio_flags;

 pio = pci_resource_start(ha->pdev, 0);
 pio_len = pci_resource_len(ha->pdev, 0);
 pio_flags = pci_resource_flags(ha->pdev, 0);
 if (pio_flags & IORESOURCE_IO) {
  if (pio_len < MIN_IOBASE_LEN) {
   ql4_printk(KERN_WARNING, ha,
    "Invalid PCI I/O region size\n");
   pio = 0;
  }
 } else {
  ql4_printk(KERN_WARNING, ha, "region #0 not a PIO resource\n");
  pio = 0;
 }


 mmio = pci_resource_start(ha->pdev, 1);
 mmio_len = pci_resource_len(ha->pdev, 1);
 mmio_flags = pci_resource_flags(ha->pdev, 1);

 if (!(mmio_flags & IORESOURCE_MEM)) {
  ql4_printk(KERN_ERR, ha,
      "region #0 not an MMIO resource, aborting\n");

  goto iospace_error_exit;
 }

 if (mmio_len < MIN_IOBASE_LEN) {
  ql4_printk(KERN_ERR, ha,
      "Invalid PCI mem region size, aborting\n");
  goto iospace_error_exit;
 }

 if (pci_request_regions(ha->pdev, DRIVER_NAME)) {
  ql4_printk(KERN_WARNING, ha,
      "Failed to reserve PIO/MMIO regions\n");

  goto iospace_error_exit;
 }

 ha->pio_address = pio;
 ha->pio_length = pio_len;
 ha->reg = ioremap(mmio, MIN_IOBASE_LEN);
 if (!ha->reg) {
  ql4_printk(KERN_ERR, ha,
      "cannot remap MMIO, aborting\n");

  goto iospace_error_exit;
 }

 return 0;

iospace_error_exit:
 return -ENOMEM;
}
