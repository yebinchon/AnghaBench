
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct inno_hdmi_phy {int regmap; } ;


 int regmap_update_bits (int ,int,int,int) ;

__attribute__((used)) static inline void inno_update_bits(struct inno_hdmi_phy *inno, u8 reg,
        u8 mask, u8 val)
{
 regmap_update_bits(inno->regmap, reg * 4, mask, val);
}
