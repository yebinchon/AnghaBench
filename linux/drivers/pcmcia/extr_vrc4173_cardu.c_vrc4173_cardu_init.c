
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pci_register_driver (int *) ;
 int vrc4173_cardu_driver ;
 scalar_t__ vrc4173_cardu_slots ;

__attribute__((used)) static int vrc4173_cardu_init(void)
{
 vrc4173_cardu_slots = 0;

 return pci_register_driver(&vrc4173_cardu_driver);
}
