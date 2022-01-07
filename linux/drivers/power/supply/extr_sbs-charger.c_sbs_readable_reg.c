
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned int SBS_CHARGER_REG_SPEC_INFO ;

__attribute__((used)) static bool sbs_readable_reg(struct device *dev, unsigned int reg)
{
 return reg >= SBS_CHARGER_REG_SPEC_INFO;
}
