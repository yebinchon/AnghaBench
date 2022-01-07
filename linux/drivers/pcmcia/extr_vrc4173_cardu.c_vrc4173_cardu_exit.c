
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pci_unregister_driver (int *) ;
 int vrc4173_cardu_driver ;

__attribute__((used)) static void vrc4173_cardu_exit(void)
{
 pci_unregister_driver(&vrc4173_cardu_driver);
}
