
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int broken_parity_status; } ;



__attribute__((used)) static void quirk_mellanox_tavor(struct pci_dev *dev)
{
 dev->broken_parity_status = 1;
}
