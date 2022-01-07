
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct inno_hdmi_phy {int regmap; } ;


 int regmap_write (int ,int,int ) ;

__attribute__((used)) static inline void inno_write(struct inno_hdmi_phy *inno, u32 reg, u8 val)
{
 regmap_write(inno->regmap, reg * 4, val);
}
