
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int parent; } ;
struct phy {TYPE_1__ dev; } ;
struct mt7621_pci_phy_instance {int index; } ;
struct mt7621_pci_phy {int dummy; } ;


 int RG_P0_TO_P1_WIDTH ;
 int RG_PE1_FRC_PHY_EN ;
 int RG_PE1_FRC_PHY_REG ;
 int RG_PE1_PHY_EN ;
 struct mt7621_pci_phy* dev_get_drvdata (int ) ;
 struct mt7621_pci_phy_instance* phy_get_drvdata (struct phy*) ;
 int phy_read (struct mt7621_pci_phy*,int) ;
 int phy_write (struct mt7621_pci_phy*,int,int) ;

__attribute__((used)) static int mt7621_pci_phy_power_on(struct phy *phy)
{
 struct mt7621_pci_phy_instance *instance = phy_get_drvdata(phy);
 struct mt7621_pci_phy *mphy = dev_get_drvdata(phy->dev.parent);
 u32 offset = (instance->index != 1) ?
  RG_PE1_FRC_PHY_REG : RG_PE1_FRC_PHY_REG + RG_P0_TO_P1_WIDTH;
 u32 val;


 val = phy_read(mphy, offset);
 val &= ~(RG_PE1_FRC_PHY_EN | RG_PE1_PHY_EN);
 val |= (RG_PE1_FRC_PHY_EN | RG_PE1_PHY_EN);
 phy_write(mphy, val, offset);

 return 0;
}
