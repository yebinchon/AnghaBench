
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dev; } ;
struct TYPE_2__ {int dev; } ;
struct ehrpwm_pwm_chip {TYPE_1__ chip; int tbclk; int mmio_base; } ;


 int AQCSFRC ;
 int AQCSFRC_CSFA_FRCDIS ;
 int AQCSFRC_CSFA_MASK ;
 int AQCSFRC_CSFB_FRCDIS ;
 int AQCSFRC_CSFB_MASK ;
 int AQSFRC ;
 int AQSFRC_RLDCSF_MASK ;
 int AQSFRC_RLDCSF_ZRO ;
 int clk_enable (int ) ;
 int configure_polarity (struct ehrpwm_pwm_chip*,int ) ;
 int dev_err (int ,char*,int ,int) ;
 int dev_name (int ) ;
 int ehrpwm_modify (int ,int ,int ,int ) ;
 int pm_runtime_get_sync (int ) ;
 struct ehrpwm_pwm_chip* to_ehrpwm_pwm_chip (struct pwm_chip*) ;

__attribute__((used)) static int ehrpwm_pwm_enable(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct ehrpwm_pwm_chip *pc = to_ehrpwm_pwm_chip(chip);
 u16 aqcsfrc_val, aqcsfrc_mask;
 int ret;


 pm_runtime_get_sync(chip->dev);


 if (pwm->hwpwm) {
  aqcsfrc_val = AQCSFRC_CSFB_FRCDIS;
  aqcsfrc_mask = AQCSFRC_CSFB_MASK;
 } else {
  aqcsfrc_val = AQCSFRC_CSFA_FRCDIS;
  aqcsfrc_mask = AQCSFRC_CSFA_MASK;
 }


 ehrpwm_modify(pc->mmio_base, AQSFRC, AQSFRC_RLDCSF_MASK,
        AQSFRC_RLDCSF_ZRO);

 ehrpwm_modify(pc->mmio_base, AQCSFRC, aqcsfrc_mask, aqcsfrc_val);


 configure_polarity(pc, pwm->hwpwm);


 ret = clk_enable(pc->tbclk);
 if (ret) {
  dev_err(chip->dev, "Failed to enable TBCLK for %s: %d\n",
   dev_name(pc->chip.dev), ret);
  return ret;
 }

 return 0;
}
