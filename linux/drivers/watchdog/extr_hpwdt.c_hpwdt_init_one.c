
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct pci_device_id {int device; int vendor; } ;
struct pci_dev {scalar_t__ subsystem_vendor; int dev; } ;
struct TYPE_6__ {scalar_t__ timeout; int * parent; scalar_t__ pretimeout; int status; } ;


 int ENODEV ;
 int ENOMEM ;
 int HPWDT_MAX_TIMER ;
 char* HPWDT_VERSION ;
 scalar_t__ PCI_VENDOR_ID_HP ;
 scalar_t__ PCI_VENDOR_ID_HP_3PAR ;
 scalar_t__ PRETIMEOUT_SEC ;
 int WDOG_HW_RUNNING ;
 int dev_dbg (int *,char*) ;
 int dev_info (int *,char*,...) ;
 int dev_warn (int *,char*,...) ;
 int hpwdt_blacklist ;
 TYPE_1__ hpwdt_dev ;
 int hpwdt_exit_nmi_decoding () ;
 scalar_t__ hpwdt_hw_is_running () ;
 int hpwdt_init_nmi_decoding (struct pci_dev*) ;
 void* hpwdt_nmistat ;
 void* hpwdt_timer_con ;
 void* hpwdt_timer_reg ;
 int ilo5 ;
 char* kdumptimeout ;
 char* min (char*,int ) ;
 int nowayout ;
 int pci_disable_device (struct pci_dev*) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 void* pci_iomap (struct pci_dev*,int,int) ;
 int pci_iounmap (struct pci_dev*,void*) ;
 scalar_t__ pci_match_id (int ,struct pci_dev*) ;
 void* pci_mem_addr ;
 scalar_t__ pretimeout ;
 int set_bit (int ,int *) ;
 int soft_margin ;
 int watchdog_init_timeout (TYPE_1__*,int ,int *) ;
 int watchdog_register_device (TYPE_1__*) ;
 int watchdog_set_nowayout (TYPE_1__*,int ) ;
 int watchdog_stop_on_unregister (TYPE_1__*) ;

__attribute__((used)) static int hpwdt_init_one(struct pci_dev *dev,
     const struct pci_device_id *ent)
{
 int retval;






 if (dev->subsystem_vendor != PCI_VENDOR_ID_HP &&
     dev->subsystem_vendor != PCI_VENDOR_ID_HP_3PAR) {
  dev_warn(&dev->dev,
   "This server does not have an iLO2+ ASIC.\n");
  return -ENODEV;
 }

 if (pci_match_id(hpwdt_blacklist, dev)) {
  dev_dbg(&dev->dev, "Not supported on this device\n");
  return -ENODEV;
 }

 if (pci_enable_device(dev)) {
  dev_warn(&dev->dev,
   "Not possible to enable PCI Device: 0x%x:0x%x.\n",
   ent->vendor, ent->device);
  return -ENODEV;
 }

 pci_mem_addr = pci_iomap(dev, 1, 0x80);
 if (!pci_mem_addr) {
  dev_warn(&dev->dev,
   "Unable to detect the iLO2+ server memory.\n");
  retval = -ENOMEM;
  goto error_pci_iomap;
 }
 hpwdt_nmistat = pci_mem_addr + 0x6e;
 hpwdt_timer_reg = pci_mem_addr + 0x70;
 hpwdt_timer_con = pci_mem_addr + 0x72;


 if (hpwdt_hw_is_running()) {
  dev_info(&dev->dev, "timer is running\n");
  set_bit(WDOG_HW_RUNNING, &hpwdt_dev.status);
 }


 retval = hpwdt_init_nmi_decoding(dev);
 if (retval != 0)
  goto error_init_nmi_decoding;

 watchdog_stop_on_unregister(&hpwdt_dev);
 watchdog_set_nowayout(&hpwdt_dev, nowayout);
 watchdog_init_timeout(&hpwdt_dev, soft_margin, ((void*)0));

 if (pretimeout && hpwdt_dev.timeout <= PRETIMEOUT_SEC) {
  dev_warn(&dev->dev, "timeout <= pretimeout. Setting pretimeout to zero\n");
  pretimeout = 0;
 }
 hpwdt_dev.pretimeout = pretimeout ? PRETIMEOUT_SEC : 0;
 kdumptimeout = min(kdumptimeout, HPWDT_MAX_TIMER);

 hpwdt_dev.parent = &dev->dev;
 retval = watchdog_register_device(&hpwdt_dev);
 if (retval < 0)
  goto error_wd_register;

 dev_info(&dev->dev, "HPE Watchdog Timer Driver: Version: %s\n",
    HPWDT_VERSION);
 dev_info(&dev->dev, "timeout: %d seconds (nowayout=%d)\n",
    hpwdt_dev.timeout, nowayout);
 dev_info(&dev->dev, "pretimeout: %s.\n",
    pretimeout ? "on" : "off");
 dev_info(&dev->dev, "kdumptimeout: %d.\n", kdumptimeout);

 if (dev->subsystem_vendor == PCI_VENDOR_ID_HP_3PAR)
  ilo5 = 1;

 return 0;

error_wd_register:
 hpwdt_exit_nmi_decoding();
error_init_nmi_decoding:
 pci_iounmap(dev, pci_mem_addr);
error_pci_iomap:
 pci_disable_device(dev);
 return retval;
}
