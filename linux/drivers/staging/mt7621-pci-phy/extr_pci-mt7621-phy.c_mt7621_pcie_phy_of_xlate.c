
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy {int dummy; } ;
struct of_phandle_args {scalar_t__ args_count; size_t* args; } ;
struct mt7621_pci_phy {TYPE_1__** phys; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct phy* phy; } ;


 int ENODEV ;
 struct phy* ERR_PTR (int ) ;
 size_t MAX_PHYS ;
 scalar_t__ WARN_ON (int) ;
 struct mt7621_pci_phy* dev_get_drvdata (struct device*) ;

__attribute__((used)) static struct phy *mt7621_pcie_phy_of_xlate(struct device *dev,
         struct of_phandle_args *args)
{
 struct mt7621_pci_phy *mt7621_phy = dev_get_drvdata(dev);

 if (args->args_count == 0)
  return mt7621_phy->phys[0]->phy;

 if (WARN_ON(args->args[0] >= MAX_PHYS))
  return ERR_PTR(-ENODEV);

 return mt7621_phy->phys[args->args[0]]->phy;
}
