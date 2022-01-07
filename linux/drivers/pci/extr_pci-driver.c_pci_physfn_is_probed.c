
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {TYPE_1__* physfn; scalar_t__ is_virtfn; } ;
struct TYPE_2__ {scalar_t__ is_probed; } ;



__attribute__((used)) static bool pci_physfn_is_probed(struct pci_dev *dev)
{



 return 0;

}
