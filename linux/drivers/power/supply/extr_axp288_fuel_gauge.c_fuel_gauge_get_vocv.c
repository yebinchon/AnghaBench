
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axp288_fg_info {int dummy; } ;


 int AXP288_FG_OCVH_REG ;
 int VOLTAGE_FROM_ADC (int) ;
 int fuel_gauge_read_12bit_word (struct axp288_fg_info*,int ) ;

__attribute__((used)) static int fuel_gauge_get_vocv(struct axp288_fg_info *info, int *vocv)
{
 int ret;

 ret = fuel_gauge_read_12bit_word(info, AXP288_FG_OCVH_REG);
 if (ret >= 0)
  *vocv = VOLTAGE_FROM_ADC(ret);

 return ret;
}
