
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7621_pci_phy {int regmap; } ;


 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static inline void phy_write(struct mt7621_pci_phy *phy, u32 val, u32 reg)
{
 regmap_write(phy->regmap, reg, val);
}
