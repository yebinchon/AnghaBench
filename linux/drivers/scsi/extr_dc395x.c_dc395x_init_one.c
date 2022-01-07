
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {unsigned int irq; int dev; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct AdapterCtlBlk {struct pci_dev* dev; struct Scsi_Host* scsi_host; } ;


 int DBG_0 ;
 int ENODEV ;
 int KERN_ERR ;
 int KERN_INFO ;
 unsigned long PCI_BASE_ADDRESS_IO_MASK ;
 scalar_t__ adapter_init (struct AdapterCtlBlk*,unsigned long,unsigned int,unsigned int) ;
 int adapter_uninit (struct AdapterCtlBlk*) ;
 int banner_display () ;
 int dc395x_driver_template ;
 int dprintkdbg (int ,char*,unsigned long,...) ;
 int dprintkl (int ,char*) ;
 int pci_disable_device (struct pci_dev*) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 int pci_name (struct pci_dev*) ;
 unsigned int pci_resource_len (struct pci_dev*,int ) ;
 unsigned long pci_resource_start (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct Scsi_Host*) ;
 int pci_set_master (struct pci_dev*) ;
 scalar_t__ scsi_add_host (struct Scsi_Host*,int *) ;
 struct Scsi_Host* scsi_host_alloc (int *,int) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_scan_host (struct Scsi_Host*) ;

__attribute__((used)) static int dc395x_init_one(struct pci_dev *dev, const struct pci_device_id *id)
{
 struct Scsi_Host *scsi_host = ((void*)0);
 struct AdapterCtlBlk *acb = ((void*)0);
 unsigned long io_port_base;
 unsigned int io_port_len;
 unsigned int irq;

 dprintkdbg(DBG_0, "Init one instance (%s)\n", pci_name(dev));
 banner_display();

 if (pci_enable_device(dev))
 {
  dprintkl(KERN_INFO, "PCI Enable device failed.\n");
  return -ENODEV;
 }
 io_port_base = pci_resource_start(dev, 0) & PCI_BASE_ADDRESS_IO_MASK;
 io_port_len = pci_resource_len(dev, 0);
 irq = dev->irq;
 dprintkdbg(DBG_0, "IO_PORT=0x%04lx, IRQ=0x%x\n", io_port_base, dev->irq);


 scsi_host = scsi_host_alloc(&dc395x_driver_template,
        sizeof(struct AdapterCtlBlk));
 if (!scsi_host) {
  dprintkl(KERN_INFO, "scsi_host_alloc failed\n");
  goto fail;
 }
  acb = (struct AdapterCtlBlk*)scsi_host->hostdata;
  acb->scsi_host = scsi_host;
  acb->dev = dev;


  if (adapter_init(acb, io_port_base, io_port_len, irq)) {
  dprintkl(KERN_INFO, "adapter init failed\n");
  goto fail;
 }

 pci_set_master(dev);


 if (scsi_add_host(scsi_host, &dev->dev)) {
  dprintkl(KERN_ERR, "scsi_add_host failed\n");
  goto fail;
 }
 pci_set_drvdata(dev, scsi_host);
 scsi_scan_host(scsi_host);

 return 0;

fail:
 if (acb != ((void*)0))
  adapter_uninit(acb);
 if (scsi_host != ((void*)0))
  scsi_host_put(scsi_host);
 pci_disable_device(dev);
 return -ENODEV;
}
