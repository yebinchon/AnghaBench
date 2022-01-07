
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct axp20x_dev {int variant; int regmap; } ;


 int AXP803_DCDC23_POLYPHASE_DUAL ;

 int AXP803_DCDC56_POLYPHASE_DUAL ;


 int AXP803_POLYPHASE_CTRL ;
 int AXP806_DCDCABC_POLYPHASE_MASK ;
 int AXP806_DCDCABC_POLYPHASE_TRI ;
 int AXP806_DCDCAB_POLYPHASE_DUAL ;


 int AXP806_DCDCDE_POLYPHASE_DUAL ;

 int AXP806_DCDC_MODE_CTRL2 ;


 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static bool axp20x_is_polyphase_slave(struct axp20x_dev *axp20x, int id)
{
 u32 reg = 0;





 switch (axp20x->variant) {
 case 133:
 case 128:
  regmap_read(axp20x->regmap, AXP803_POLYPHASE_CTRL, &reg);

  switch (id) {
  case 135:
   return !!(reg & AXP803_DCDC23_POLYPHASE_DUAL);
  case 134:
   return !!(reg & AXP803_DCDC56_POLYPHASE_DUAL);
  }
  break;

 case 129:
  regmap_read(axp20x->regmap, AXP806_DCDC_MODE_CTRL2, &reg);

  switch (id) {
  case 132:
   return (((reg & AXP806_DCDCABC_POLYPHASE_MASK) ==
    AXP806_DCDCAB_POLYPHASE_DUAL) ||
    ((reg & AXP806_DCDCABC_POLYPHASE_MASK) ==
    AXP806_DCDCABC_POLYPHASE_TRI));
  case 131:
   return ((reg & AXP806_DCDCABC_POLYPHASE_MASK) ==
    AXP806_DCDCABC_POLYPHASE_TRI);
  case 130:
   return !!(reg & AXP806_DCDCDE_POLYPHASE_DUAL);
  }
  break;

 default:
  return 0;
 }

 return 0;
}
