
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_config_window {int dummy; } ;


 int pci_ecam_free (struct pci_config_window*) ;

__attribute__((used)) static void gen_pci_unmap_cfg(void *ptr)
{
 pci_ecam_free((struct pci_config_window *)ptr);
}
