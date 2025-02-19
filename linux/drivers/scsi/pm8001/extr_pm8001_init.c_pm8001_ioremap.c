
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct pm8001_hba_info {TYPE_1__* io_mem; struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ memvirtaddr; scalar_t__ memsize; scalar_t__ membase; } ;


 int IORESOURCE_MEM ;
 int PM8001_INIT_DBG (struct pm8001_hba_info*,int ) ;
 scalar_t__ ioremap (scalar_t__,scalar_t__) ;
 int pci_resource_flags (struct pci_dev*,int) ;
 scalar_t__ pci_resource_len (struct pci_dev*,int) ;
 scalar_t__ pci_resource_start (struct pci_dev*,int) ;
 int pm8001_printk (char*,int,int,...) ;

__attribute__((used)) static int pm8001_ioremap(struct pm8001_hba_info *pm8001_ha)
{
 u32 bar;
 u32 logicalBar = 0;
 struct pci_dev *pdev;

 pdev = pm8001_ha->pdev;

 for (bar = 0; bar < 6; bar++) {
  if ((bar == 1) || (bar == 3))
   continue;
  if (pci_resource_flags(pdev, bar) & IORESOURCE_MEM) {
   pm8001_ha->io_mem[logicalBar].membase =
    pci_resource_start(pdev, bar);
   pm8001_ha->io_mem[logicalBar].memsize =
    pci_resource_len(pdev, bar);
   pm8001_ha->io_mem[logicalBar].memvirtaddr =
    ioremap(pm8001_ha->io_mem[logicalBar].membase,
    pm8001_ha->io_mem[logicalBar].memsize);
   PM8001_INIT_DBG(pm8001_ha,
    pm8001_printk("PCI: bar %d, logicalBar %d ",
    bar, logicalBar));
   PM8001_INIT_DBG(pm8001_ha, pm8001_printk(
    "base addr %llx virt_addr=%llx len=%d\n",
    (u64)pm8001_ha->io_mem[logicalBar].membase,
    (u64)(unsigned long)
    pm8001_ha->io_mem[logicalBar].memvirtaddr,
    pm8001_ha->io_mem[logicalBar].memsize));
  } else {
   pm8001_ha->io_mem[logicalBar].membase = 0;
   pm8001_ha->io_mem[logicalBar].memsize = 0;
   pm8001_ha->io_mem[logicalBar].memvirtaddr = 0;
  }
  logicalBar++;
 }
 return 0;
}
