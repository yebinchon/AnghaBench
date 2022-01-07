
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf85363 {int regmap; } ;


 unsigned int ALRM_DAY_A1E ;
 unsigned int ALRM_HR_A1E ;
 unsigned int ALRM_MIN_A1E ;
 unsigned int ALRM_MON_A1E ;
 unsigned int ALRM_SEC_A1E ;
 int CTRL_FLAGS ;
 int CTRL_INTA_EN ;
 int DT_ALARM_EN ;
 unsigned int FLAGS_A1F ;
 unsigned int INT_A1IE ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;

__attribute__((used)) static int _pcf85363_rtc_alarm_irq_enable(struct pcf85363 *pcf85363, unsigned
       int enabled)
{
 unsigned int alarm_flags = ALRM_SEC_A1E | ALRM_MIN_A1E | ALRM_HR_A1E |
       ALRM_DAY_A1E | ALRM_MON_A1E;
 int ret;

 ret = regmap_update_bits(pcf85363->regmap, DT_ALARM_EN, alarm_flags,
     enabled ? alarm_flags : 0);
 if (ret)
  return ret;

 ret = regmap_update_bits(pcf85363->regmap, CTRL_INTA_EN,
     INT_A1IE, enabled ? INT_A1IE : 0);

 if (ret || enabled)
  return ret;


 return regmap_update_bits(pcf85363->regmap, CTRL_FLAGS, FLAGS_A1F, 0);
}
