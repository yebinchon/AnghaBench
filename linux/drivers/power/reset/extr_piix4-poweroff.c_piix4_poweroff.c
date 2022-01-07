
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int bus; } ;


 int PCI_DEVFN (int,int) ;
 int PCI_DEVID (int ,int ) ;
 scalar_t__ PIIX4_FUNC3IO_PMCNTRL ;
 int PIIX4_FUNC3IO_PMCNTRL_SUS_EN ;
 int PIIX4_FUNC3IO_PMCNTRL_SUS_TYP_SOFF ;
 scalar_t__ PIIX4_FUNC3IO_PMSTS ;
 int PIIX4_FUNC3IO_PMSTS_PWRBTN_STS ;
 int PIIX4_SUSPEND_MAGIC ;
 int inw (scalar_t__) ;
 scalar_t__ io_offset ;
 int mdelay (int) ;
 int outw (int,scalar_t__) ;
 int pci_bus_write_config_dword (int ,int,int ,int ) ;
 TYPE_1__* pm_dev ;
 int pr_emerg (char*) ;

__attribute__((used)) static void piix4_poweroff(void)
{
 int spec_devid;
 u16 sts;


 while (1) {
  sts = inw(io_offset + PIIX4_FUNC3IO_PMSTS);
  if (!(sts & PIIX4_FUNC3IO_PMSTS_PWRBTN_STS))
   break;
  outw(sts, io_offset + PIIX4_FUNC3IO_PMSTS);
 }


 outw(PIIX4_FUNC3IO_PMCNTRL_SUS_TYP_SOFF | PIIX4_FUNC3IO_PMCNTRL_SUS_EN,
      io_offset + PIIX4_FUNC3IO_PMCNTRL);


 mdelay(10);






 spec_devid = PCI_DEVID(0, PCI_DEVFN(0x1f, 0x7));
 pci_bus_write_config_dword(pm_dev->bus, spec_devid, 0,
       PIIX4_SUSPEND_MAGIC);


 mdelay(1000);
 pr_emerg("Unable to poweroff system\n");
}
