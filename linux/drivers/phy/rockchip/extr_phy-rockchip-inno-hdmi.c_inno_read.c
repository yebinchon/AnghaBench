
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct inno_hdmi_phy {int regmap; } ;


 int regmap_read (int ,int,int*) ;

__attribute__((used)) static inline u8 inno_read(struct inno_hdmi_phy *inno, u32 reg)
{
 u32 val;

 regmap_read(inno->regmap, reg * 4, &val);

 return val;
}
