
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct phy {TYPE_1__ dev; } ;
struct mt7621_pci_phy_instance {int dummy; } ;
struct mt7621_pci_phy {scalar_t__ bypass_pipe_rst; } ;


 struct mt7621_pci_phy* dev_get_drvdata (int ) ;
 int mt7621_bypass_pipe_rst (struct mt7621_pci_phy*,struct mt7621_pci_phy_instance*) ;
 int mt7621_set_phy_for_ssc (struct mt7621_pci_phy*,struct mt7621_pci_phy_instance*) ;
 struct mt7621_pci_phy_instance* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static int mt7621_pci_phy_init(struct phy *phy)
{
 struct mt7621_pci_phy_instance *instance = phy_get_drvdata(phy);
 struct mt7621_pci_phy *mphy = dev_get_drvdata(phy->dev.parent);

 if (mphy->bypass_pipe_rst)
  mt7621_bypass_pipe_rst(mphy, instance);

 mt7621_set_phy_for_ssc(mphy, instance);

 return 0;
}
