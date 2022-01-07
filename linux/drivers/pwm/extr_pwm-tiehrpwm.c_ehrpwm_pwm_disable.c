
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pwm_device {scalar_t__ hwpwm; } ;
struct pwm_chip {int dev; } ;
struct ehrpwm_pwm_chip {int tbclk; int mmio_base; } ;


 int AQCSFRC ;
 int AQCSFRC_CSFA_FRCLOW ;
 int AQCSFRC_CSFA_MASK ;
 int AQCSFRC_CSFB_FRCLOW ;
 int AQCSFRC_CSFB_MASK ;
 int AQSFRC ;
 int AQSFRC_RLDCSF_IMDT ;
 int AQSFRC_RLDCSF_MASK ;
 int AQSFRC_RLDCSF_ZRO ;
 int clk_disable (int ) ;
 int ehrpwm_modify (int ,int ,int ,int ) ;
 int pm_runtime_put_sync (int ) ;
 struct ehrpwm_pwm_chip* to_ehrpwm_pwm_chip (struct pwm_chip*) ;

__attribute__((used)) static void ehrpwm_pwm_disable(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct ehrpwm_pwm_chip *pc = to_ehrpwm_pwm_chip(chip);
 u16 aqcsfrc_val, aqcsfrc_mask;


 if (pwm->hwpwm) {
  aqcsfrc_val = AQCSFRC_CSFB_FRCLOW;
  aqcsfrc_mask = AQCSFRC_CSFB_MASK;
 } else {
  aqcsfrc_val = AQCSFRC_CSFA_FRCLOW;
  aqcsfrc_mask = AQCSFRC_CSFA_MASK;
 }


 ehrpwm_modify(pc->mmio_base, AQSFRC, AQSFRC_RLDCSF_MASK,
        AQSFRC_RLDCSF_ZRO);
 ehrpwm_modify(pc->mmio_base, AQCSFRC, aqcsfrc_mask, aqcsfrc_val);




 ehrpwm_modify(pc->mmio_base, AQSFRC, AQSFRC_RLDCSF_MASK,
        AQSFRC_RLDCSF_IMDT);

 ehrpwm_modify(pc->mmio_base, AQCSFRC, aqcsfrc_mask, aqcsfrc_val);


 clk_disable(pc->tbclk);


 pm_runtime_put_sync(chip->dev);
}
