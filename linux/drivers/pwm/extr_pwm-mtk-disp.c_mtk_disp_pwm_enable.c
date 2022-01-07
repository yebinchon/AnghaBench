
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;
struct mtk_disp_pwm {TYPE_1__* data; int clk_main; int clk_mm; } ;
struct TYPE_2__ {int enable_mask; } ;


 int DISP_PWM_EN ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int mtk_disp_pwm_update_bits (struct mtk_disp_pwm*,int ,int ,int ) ;
 struct mtk_disp_pwm* to_mtk_disp_pwm (struct pwm_chip*) ;

__attribute__((used)) static int mtk_disp_pwm_enable(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct mtk_disp_pwm *mdp = to_mtk_disp_pwm(chip);
 int err;

 err = clk_enable(mdp->clk_main);
 if (err < 0)
  return err;

 err = clk_enable(mdp->clk_mm);
 if (err < 0) {
  clk_disable(mdp->clk_main);
  return err;
 }

 mtk_disp_pwm_update_bits(mdp, DISP_PWM_EN, mdp->data->enable_mask,
     mdp->data->enable_mask);

 return 0;
}
