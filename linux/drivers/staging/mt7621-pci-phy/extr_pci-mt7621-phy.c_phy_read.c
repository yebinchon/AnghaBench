
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7621_pci_phy {int regmap; } ;


 int regmap_read (int ,int ,int *) ;

__attribute__((used)) static inline u32 phy_read(struct mt7621_pci_phy *phy, u32 reg)
{
 u32 val;

 regmap_read(phy->regmap, reg, &val);

 return val;
}
