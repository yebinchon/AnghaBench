
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_dev {TYPE_1__* bus; } ;
struct TYPE_6__ {TYPE_2__* dev; } ;
struct dino_device {TYPE_3__ hba; } ;
struct TYPE_5__ {int id; } ;
struct TYPE_4__ {int bridge; } ;


 struct dino_device* DINO_DEV (int ) ;
 int is_card_dino (int *) ;
 int parisc_walk_tree (int ) ;

__attribute__((used)) static int pci_dev_is_behind_card_dino(struct pci_dev *dev)
{
 struct dino_device *dino_dev;

 dino_dev = DINO_DEV(parisc_walk_tree(dev->bus->bridge));
 return is_card_dino(&dino_dev->hba.dev->id);
}
