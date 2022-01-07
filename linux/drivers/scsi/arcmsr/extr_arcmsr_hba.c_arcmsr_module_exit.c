
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arcmsr_pci_driver ;
 int pci_unregister_driver (int *) ;

__attribute__((used)) static void arcmsr_module_exit(void)
{
 pci_unregister_driver(&arcmsr_pci_driver);
}
