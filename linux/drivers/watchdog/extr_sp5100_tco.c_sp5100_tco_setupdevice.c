
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct watchdog_device {int timeout; int bootstatus; } ;
struct sp5100_tco {int tco_reg_layout; int tcobase; } ;
struct device {int dummy; } ;


 int EBUSY ;
 int EFCH_PM_ACPI_MMIO_ADDR ;
 int EFCH_PM_ACPI_MMIO_WDT_OFFSET ;
 int EFCH_PM_DECODEEN ;
 int EFCH_PM_DECODEEN_WDT_TMREN ;
 int EFCH_PM_ISACONTROL ;
 int EFCH_PM_ISACONTROL_MMIOEN ;
 int EFCH_PM_WDT_ADDR ;
 int ENODEV ;
 int ENOMEM ;
 int SB800_ACPI_MMIO_DECODE_EN ;
 int SB800_ACPI_MMIO_SEL ;
 char* SB800_DEVNAME ;
 int SB800_PM_ACPI_MMIO_EN ;
 int SB800_PM_WATCHDOG_BASE ;
 int SB800_PM_WDT_MMIO_OFFSET ;
 char* SP5100_DEVNAME ;
 int SP5100_IO_PM_INDEX_REG ;
 int SP5100_PM_IOPORTS_SIZE ;
 int SP5100_PM_WATCHDOG_BASE ;
 int SP5100_SB_RESOURCE_MMIO_BASE ;
 int SP5100_WDT_ACTION_RESET ;
 int SP5100_WDT_CONTROL (int ) ;
 int SP5100_WDT_DISABLED ;
 int SP5100_WDT_FIRED ;
 int SP5100_WDT_MEM_MAP_SIZE ;
 int WDIOF_CARDRESET ;
 int dev_dbg (struct device*,char*,int) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,int) ;
 int devm_ioremap (struct device*,int,int ) ;
 int devm_request_mem_region (struct device*,int,int ,char const*) ;

 int pci_read_config_dword (int ,int ,int*) ;
 int readl (int ) ;
 int release_region (int ,int ) ;
 int request_muxed_region (int ,int ,char*) ;


 int sp5100_tco_pci ;
 int sp5100_tco_read_pm_reg32 (int ) ;
 int sp5100_tco_read_pm_reg8 (int ) ;
 int tco_timer_enable (struct sp5100_tco*) ;
 int tco_timer_set_timeout (struct watchdog_device*,int ) ;
 int tco_timer_stop (struct watchdog_device*) ;
 struct sp5100_tco* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel (int,int ) ;

__attribute__((used)) static int sp5100_tco_setupdevice(struct device *dev,
      struct watchdog_device *wdd)
{
 struct sp5100_tco *tco = watchdog_get_drvdata(wdd);
 const char *dev_name;
 u32 mmio_addr = 0, val;
 int ret;


 if (!request_muxed_region(SP5100_IO_PM_INDEX_REG,
      SP5100_PM_IOPORTS_SIZE, "sp5100_tco")) {
  dev_err(dev, "I/O address 0x%04x already in use\n",
   SP5100_IO_PM_INDEX_REG);
  return -EBUSY;
 }




 switch (tco->tco_reg_layout) {
 case 128:
  dev_name = SP5100_DEVNAME;
  mmio_addr = sp5100_tco_read_pm_reg32(SP5100_PM_WATCHDOG_BASE) &
        0xfffffff8;
  break;
 case 129:
  dev_name = SB800_DEVNAME;
  mmio_addr = sp5100_tco_read_pm_reg32(SB800_PM_WATCHDOG_BASE) &
        0xfffffff8;
  break;
 case 130:
  dev_name = SB800_DEVNAME;
  val = sp5100_tco_read_pm_reg8(EFCH_PM_DECODEEN);
  if (val & EFCH_PM_DECODEEN_WDT_TMREN)
   mmio_addr = EFCH_PM_WDT_ADDR;
  break;
 default:
  return -ENODEV;
 }


 if (!mmio_addr ||
     !devm_request_mem_region(dev, mmio_addr, SP5100_WDT_MEM_MAP_SIZE,
         dev_name)) {
  if (mmio_addr)
   dev_dbg(dev, "MMIO address 0x%08x already in use\n",
    mmio_addr);
  switch (tco->tco_reg_layout) {
  case 128:





   pci_read_config_dword(sp5100_tco_pci,
           SP5100_SB_RESOURCE_MMIO_BASE,
           &mmio_addr);
   if ((mmio_addr & (SB800_ACPI_MMIO_DECODE_EN |
       SB800_ACPI_MMIO_SEL)) !=
        SB800_ACPI_MMIO_DECODE_EN) {
    ret = -ENODEV;
    goto unreg_region;
   }
   mmio_addr &= ~0xFFF;
   mmio_addr += SB800_PM_WDT_MMIO_OFFSET;
   break;
  case 129:

   mmio_addr =
    sp5100_tco_read_pm_reg32(SB800_PM_ACPI_MMIO_EN);
   if ((mmio_addr & (SB800_ACPI_MMIO_DECODE_EN |
       SB800_ACPI_MMIO_SEL)) !=
        SB800_ACPI_MMIO_DECODE_EN) {
    ret = -ENODEV;
    goto unreg_region;
   }
   mmio_addr &= ~0xFFF;
   mmio_addr += SB800_PM_WDT_MMIO_OFFSET;
   break;
  case 130:
   val = sp5100_tco_read_pm_reg8(EFCH_PM_ISACONTROL);
   if (!(val & EFCH_PM_ISACONTROL_MMIOEN)) {
    ret = -ENODEV;
    goto unreg_region;
   }
   mmio_addr = EFCH_PM_ACPI_MMIO_ADDR +
        EFCH_PM_ACPI_MMIO_WDT_OFFSET;
   break;
  }
  dev_dbg(dev, "Got 0x%08x from SBResource_MMIO register\n",
   mmio_addr);
  if (!devm_request_mem_region(dev, mmio_addr,
          SP5100_WDT_MEM_MAP_SIZE,
          dev_name)) {
   dev_dbg(dev, "MMIO address 0x%08x already in use\n",
    mmio_addr);
   ret = -EBUSY;
   goto unreg_region;
  }
 }

 tco->tcobase = devm_ioremap(dev, mmio_addr, SP5100_WDT_MEM_MAP_SIZE);
 if (!tco->tcobase) {
  dev_err(dev, "failed to get tcobase address\n");
  ret = -ENOMEM;
  goto unreg_region;
 }

 dev_info(dev, "Using 0x%08x for watchdog MMIO address\n", mmio_addr);


 tco_timer_enable(tco);

 val = readl(SP5100_WDT_CONTROL(tco->tcobase));
 if (val & SP5100_WDT_DISABLED) {
  dev_err(dev, "Watchdog hardware is disabled\n");
  ret = -ENODEV;
  goto unreg_region;
 }





 if (val & SP5100_WDT_FIRED)
  wdd->bootstatus = WDIOF_CARDRESET;

 val &= ~SP5100_WDT_ACTION_RESET;
 writel(val, SP5100_WDT_CONTROL(tco->tcobase));


 tco_timer_set_timeout(wdd, wdd->timeout);





 tco_timer_stop(wdd);

 release_region(SP5100_IO_PM_INDEX_REG, SP5100_PM_IOPORTS_SIZE);

 return 0;

unreg_region:
 release_region(SP5100_IO_PM_INDEX_REG, SP5100_PM_IOPORTS_SIZE);
 return ret;
}
