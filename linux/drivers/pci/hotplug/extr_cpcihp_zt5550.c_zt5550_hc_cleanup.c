
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 int hc_dev ;
 int hc_registers ;
 int iounmap (int ) ;
 int pci_disable_device (int ) ;
 int pci_resource_len (int ,int) ;
 int pci_resource_start (int ,int) ;
 int release_mem_region (int ,int ) ;

__attribute__((used)) static int zt5550_hc_cleanup(void)
{
 if (!hc_dev)
  return -ENODEV;

 iounmap(hc_registers);
 release_mem_region(pci_resource_start(hc_dev, 1),
      pci_resource_len(hc_dev, 1));
 pci_disable_device(hc_dev);
 return 0;
}
