
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pci_unregister_driver (int *) ;
 int tc_unregister_driver (int *) ;
 int tgafb_pci_driver ;
 int tgafb_tc_driver ;

__attribute__((used)) static void tgafb_exit(void)
{
 tc_unregister_driver(&tgafb_tc_driver);
 pci_unregister_driver(&tgafb_pci_driver);
}
