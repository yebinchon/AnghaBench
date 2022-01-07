
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ io_base; } ;


 int enter (char*) ;
 int i82092aa_pci_driver ;
 int leave (char*) ;
 int pci_unregister_driver (int *) ;
 int release_region (scalar_t__,int) ;
 TYPE_1__* sockets ;

__attribute__((used)) static void i82092aa_module_exit(void)
{
 enter("i82092aa_module_exit");
 pci_unregister_driver(&i82092aa_pci_driver);
 if (sockets[0].io_base>0)
    release_region(sockets[0].io_base, 2);
 leave("i82092aa_module_exit");
}
