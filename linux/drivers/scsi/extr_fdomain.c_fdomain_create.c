
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fdomain {int base; int chip; int work; } ;
struct device {TYPE_1__* bus; } ;
struct Scsi_Host {int this_id; int irq; int io_port; int n_io_port; } ;
typedef enum chip_type { ____Placeholder_chip_type } chip_type ;
struct TYPE_2__ {int name; } ;


 int FDOMAIN_REGION_SIZE ;
 int INIT_WORK (int *,int ) ;
 unsigned long IRQF_SHARED ;
 int KERN_INFO ;
 int dev_err (struct device*,char*) ;
 scalar_t__ dev_is_pci (struct device*) ;
 int fdomain_identify (int) ;
 int fdomain_irq ;
 int fdomain_reset (int) ;
 int fdomain_template ;
 scalar_t__ fdomain_test_loopback (int) ;
 int fdomain_work ;
 int free_irq (int,struct fdomain*) ;
 scalar_t__ request_irq (int,int ,unsigned long,char*,struct fdomain*) ;
 scalar_t__ scsi_add_host (struct Scsi_Host*,struct device*) ;
 struct Scsi_Host* scsi_host_alloc (int *,int) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_scan_host (struct Scsi_Host*) ;
 int shost_printk (int ,struct Scsi_Host*,char*,char*,int,int,int) ;
 struct fdomain* shost_priv (struct Scsi_Host*) ;
 int strcmp (int ,char*) ;

struct Scsi_Host *fdomain_create(int base, int irq, int this_id,
     struct device *dev)
{
 struct Scsi_Host *sh;
 struct fdomain *fd;
 enum chip_type chip;
 static const char * const chip_names[] = {
  "Unknown", "TMC-1800", "TMC-18C50", "TMC-18C30"
 };
 unsigned long irq_flags = 0;

 chip = fdomain_identify(base);
 if (!chip)
  return ((void*)0);

 fdomain_reset(base);

 if (fdomain_test_loopback(base))
  return ((void*)0);

 if (!irq) {
  dev_err(dev, "card has no IRQ assigned");
  return ((void*)0);
 }

 sh = scsi_host_alloc(&fdomain_template, sizeof(struct fdomain));
 if (!sh)
  return ((void*)0);

 if (this_id)
  sh->this_id = this_id & 0x07;

 sh->irq = irq;
 sh->io_port = base;
 sh->n_io_port = FDOMAIN_REGION_SIZE;

 fd = shost_priv(sh);
 fd->base = base;
 fd->chip = chip;
 INIT_WORK(&fd->work, fdomain_work);

 if (dev_is_pci(dev) || !strcmp(dev->bus->name, "pcmcia"))
  irq_flags = IRQF_SHARED;

 if (request_irq(irq, fdomain_irq, irq_flags, "fdomain", fd))
  goto fail_put;

 shost_printk(KERN_INFO, sh, "%s chip at 0x%x irq %d SCSI ID %d\n",
       dev_is_pci(dev) ? "TMC-36C70 (PCI bus)" : chip_names[chip],
       base, irq, sh->this_id);

 if (scsi_add_host(sh, dev))
  goto fail_free_irq;

 scsi_scan_host(sh);

 return sh;

fail_free_irq:
 free_irq(irq, fd);
fail_put:
 scsi_host_put(sh);
 return ((void*)0);
}
