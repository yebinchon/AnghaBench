
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct act8945a_charger {struct regmap* regmap; } ;


 int ACT8945A_APCH_CTRL ;
 int ACT8945A_APCH_STATUS ;
 unsigned char APCH_CTRL_CHGEOCIN ;
 unsigned char APCH_CTRL_CHGEOCOUT ;
 unsigned char APCH_CTRL_INCON ;
 unsigned char APCH_CTRL_INDIS ;
 unsigned char APCH_CTRL_TEMPIN ;
 unsigned char APCH_CTRL_TEMPOUT ;
 unsigned char APCH_CTRL_TIMRPRE ;
 unsigned char APCH_CTRL_TIMRTOT ;
 unsigned char APCH_STATUS_CHGSTAT ;
 unsigned char APCH_STATUS_INSTAT ;
 unsigned char APCH_STATUS_TEMPSTAT ;
 unsigned char APCH_STATUS_TIMRSTAT ;
 int regmap_write (struct regmap*,int ,unsigned char) ;

__attribute__((used)) static int act8945a_enable_interrupt(struct act8945a_charger *charger)
{
 struct regmap *regmap = charger->regmap;
 unsigned char ctrl;
 int ret;

 ctrl = APCH_CTRL_CHGEOCOUT | APCH_CTRL_CHGEOCIN |
        APCH_CTRL_INDIS | APCH_CTRL_INCON |
        APCH_CTRL_TEMPOUT | APCH_CTRL_TEMPIN |
        APCH_CTRL_TIMRPRE | APCH_CTRL_TIMRTOT;
 ret = regmap_write(regmap, ACT8945A_APCH_CTRL, ctrl);
 if (ret)
  return ret;

 ctrl = APCH_STATUS_CHGSTAT | APCH_STATUS_INSTAT |
        APCH_STATUS_TEMPSTAT | APCH_STATUS_TIMRSTAT;
 ret = regmap_write(regmap, ACT8945A_APCH_STATUS, ctrl);
 if (ret)
  return ret;

 return 0;
}
