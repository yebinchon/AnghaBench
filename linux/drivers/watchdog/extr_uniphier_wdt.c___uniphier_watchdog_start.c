
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int SEC_TO_WDTTIMSET_PRD (unsigned int) ;
 int WDTCTRL ;
 int WDTCTRL_CLEAR ;
 int WDTCTRL_ENABLE ;
 unsigned int WDTCTRL_STATUS ;
 int WDTST_TIMEOUT ;
 int WDTTIMSET ;
 int regmap_read_poll_timeout (struct regmap*,int ,unsigned int,unsigned int,int ,int ) ;
 int regmap_write (struct regmap*,int ,int) ;

__attribute__((used)) static int __uniphier_watchdog_start(struct regmap *regmap, unsigned int sec)
{
 unsigned int val;
 int ret;

 ret = regmap_read_poll_timeout(regmap, WDTCTRL, val,
           !(val & WDTCTRL_STATUS),
           0, WDTST_TIMEOUT);
 if (ret)
  return ret;


 ret = regmap_write(regmap, WDTTIMSET,
      SEC_TO_WDTTIMSET_PRD(sec));
 if (ret)
  return ret;


 ret = regmap_write(regmap, WDTCTRL, WDTCTRL_ENABLE | WDTCTRL_CLEAR);
 if (!ret)




  ret = regmap_read_poll_timeout(regmap, WDTCTRL, val,
            (val & WDTCTRL_STATUS),
            0, WDTST_TIMEOUT);

 return ret;
}
