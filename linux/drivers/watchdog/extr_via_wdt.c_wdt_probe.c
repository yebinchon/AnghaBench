
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;
struct TYPE_8__ {int timeout; int bootstatus; int * parent; } ;
struct TYPE_7__ {int start; } ;


 int ENODEV ;
 int VIA_WDT_CONF ;
 unsigned char VIA_WDT_CONF_ENABLE ;
 unsigned char VIA_WDT_CONF_MMIO ;
 int VIA_WDT_FIRED ;
 int VIA_WDT_MMIO_BASE ;
 int VIA_WDT_MMIO_LEN ;
 int WDIOF_CARDRESET ;
 scalar_t__ WDT_HEARTBEAT ;
 int WDT_TIMEOUT ;
 int WDT_TIMEOUT_MAX ;
 scalar_t__ allocate_resource (int *,TYPE_1__*,int ,int,int,int,int *,int *) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,scalar_t__) ;
 int iomem_resource ;
 int * ioremap (scalar_t__,int ) ;
 int iounmap (int *) ;
 scalar_t__ jiffies ;
 scalar_t__ mmio ;
 int mod_timer (int *,scalar_t__) ;
 int nowayout ;
 int pci_disable_device (struct pci_dev*) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 int pci_read_config_byte (struct pci_dev*,int ,unsigned char*) ;
 int pci_read_config_dword (struct pci_dev*,int ,scalar_t__*) ;
 int pci_write_config_byte (struct pci_dev*,int ,unsigned char) ;
 int pci_write_config_dword (struct pci_dev*,int ,int ) ;
 int readl (int *) ;
 int release_mem_region (scalar_t__,int ) ;
 int release_resource (TYPE_1__*) ;
 int request_mem_region (scalar_t__,int ,char*) ;
 int timeout ;
 int timer ;
 int watchdog_register_device (TYPE_2__*) ;
 int watchdog_set_nowayout (TYPE_2__*,int ) ;
 TYPE_2__ wdt_dev ;
 int * wdt_mem ;
 TYPE_1__ wdt_res ;

__attribute__((used)) static int wdt_probe(struct pci_dev *pdev,
          const struct pci_device_id *ent)
{
 unsigned char conf;
 int ret = -ENODEV;

 if (pci_enable_device(pdev)) {
  dev_err(&pdev->dev, "cannot enable PCI device\n");
  return -ENODEV;
 }







 if (allocate_resource(&iomem_resource, &wdt_res, VIA_WDT_MMIO_LEN,
         0xf0000000, 0xffffff00, 0xff, ((void*)0), ((void*)0))) {
  dev_err(&pdev->dev, "MMIO allocation failed\n");
  goto err_out_disable_device;
 }

 pci_write_config_dword(pdev, VIA_WDT_MMIO_BASE, wdt_res.start);
 pci_read_config_byte(pdev, VIA_WDT_CONF, &conf);
 conf |= VIA_WDT_CONF_ENABLE | VIA_WDT_CONF_MMIO;
 pci_write_config_byte(pdev, VIA_WDT_CONF, conf);

 pci_read_config_dword(pdev, VIA_WDT_MMIO_BASE, &mmio);
 if (mmio) {
  dev_info(&pdev->dev, "VIA Chipset watchdog MMIO: %x\n", mmio);
 } else {
  dev_err(&pdev->dev, "MMIO setting failed. Check BIOS.\n");
  goto err_out_resource;
 }

 if (!request_mem_region(mmio, VIA_WDT_MMIO_LEN, "via_wdt")) {
  dev_err(&pdev->dev, "MMIO region busy\n");
  goto err_out_resource;
 }

 wdt_mem = ioremap(mmio, VIA_WDT_MMIO_LEN);
 if (wdt_mem == ((void*)0)) {
  dev_err(&pdev->dev, "cannot remap VIA wdt MMIO registers\n");
  goto err_out_release;
 }

 if (timeout < 1 || timeout > WDT_TIMEOUT_MAX)
  timeout = WDT_TIMEOUT;

 wdt_dev.timeout = timeout;
 wdt_dev.parent = &pdev->dev;
 watchdog_set_nowayout(&wdt_dev, nowayout);
 if (readl(wdt_mem) & VIA_WDT_FIRED)
  wdt_dev.bootstatus |= WDIOF_CARDRESET;

 ret = watchdog_register_device(&wdt_dev);
 if (ret)
  goto err_out_iounmap;


 mod_timer(&timer, jiffies + WDT_HEARTBEAT);
 return 0;

err_out_iounmap:
 iounmap(wdt_mem);
err_out_release:
 release_mem_region(mmio, VIA_WDT_MMIO_LEN);
err_out_resource:
 release_resource(&wdt_res);
err_out_disable_device:
 pci_disable_device(pdev);
 return ret;
}
