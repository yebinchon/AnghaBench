
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int VIA_WDT_MMIO_LEN ;
 int del_timer_sync (int *) ;
 int iounmap (int ) ;
 int mmio ;
 int pci_disable_device (struct pci_dev*) ;
 int release_mem_region (int ,int ) ;
 int release_resource (int *) ;
 int timer ;
 int watchdog_unregister_device (int *) ;
 int wdt_dev ;
 int wdt_mem ;
 int wdt_res ;

__attribute__((used)) static void wdt_remove(struct pci_dev *pdev)
{
 watchdog_unregister_device(&wdt_dev);
 del_timer_sync(&timer);
 iounmap(wdt_mem);
 release_mem_region(mmio, VIA_WDT_MMIO_LEN);
 release_resource(&wdt_res);
 pci_disable_device(pdev);
}
