
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {unsigned short const subsystem_device; } ;
struct TYPE_3__ {unsigned short* ids; int num; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* timedia_data ;

__attribute__((used)) static int pci_timedia_init(struct pci_dev *dev)
{
 const unsigned short *ids;
 int i, j;

 for (i = 0; i < ARRAY_SIZE(timedia_data); i++) {
  ids = timedia_data[i].ids;
  for (j = 0; ids[j]; j++)
   if (dev->subsystem_device == ids[j])
    return timedia_data[i].num;
 }
 return 0;
}
