
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {int is_thunderbolt; } ;


 TYPE_1__* to_pci_dev (struct device*) ;

__attribute__((used)) static int is_thunderbolt(struct device *dev, void *data)
{
 return to_pci_dev(dev)->is_thunderbolt;
}
