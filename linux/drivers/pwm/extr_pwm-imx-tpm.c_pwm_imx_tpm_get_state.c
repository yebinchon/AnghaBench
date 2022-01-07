
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct pwm_state {int enabled; int polarity; int duty_cycle; int period; } ;
struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct imx_tpm_pwm_chip {scalar_t__ base; int clk; int real_period; } ;


 int DIV_ROUND_CLOSEST_ULL (int,int) ;
 int FIELD_GET (int,int) ;
 int NSEC_PER_SEC ;
 scalar_t__ PWM_IMX_TPM_CnSC (int ) ;
 int PWM_IMX_TPM_CnSC_ELS ;
 int PWM_IMX_TPM_CnSC_ELS_INVERSED ;
 scalar_t__ PWM_IMX_TPM_CnV (int ) ;
 scalar_t__ PWM_IMX_TPM_SC ;
 int PWM_IMX_TPM_SC_PS ;
 int PWM_POLARITY_INVERSED ;
 int PWM_POLARITY_NORMAL ;
 int clk_get_rate (int ) ;
 int readl (scalar_t__) ;
 struct imx_tpm_pwm_chip* to_imx_tpm_pwm_chip (struct pwm_chip*) ;

__attribute__((used)) static void pwm_imx_tpm_get_state(struct pwm_chip *chip,
      struct pwm_device *pwm,
      struct pwm_state *state)
{
 struct imx_tpm_pwm_chip *tpm = to_imx_tpm_pwm_chip(chip);
 u32 rate, val, prescale;
 u64 tmp;


 state->period = tpm->real_period;


 rate = clk_get_rate(tpm->clk);
 val = readl(tpm->base + PWM_IMX_TPM_SC);
 prescale = FIELD_GET(PWM_IMX_TPM_SC_PS, val);
 tmp = readl(tpm->base + PWM_IMX_TPM_CnV(pwm->hwpwm));
 tmp = (tmp << prescale) * NSEC_PER_SEC;
 state->duty_cycle = DIV_ROUND_CLOSEST_ULL(tmp, rate);


 val = readl(tpm->base + PWM_IMX_TPM_CnSC(pwm->hwpwm));
 if ((val & PWM_IMX_TPM_CnSC_ELS) == PWM_IMX_TPM_CnSC_ELS_INVERSED)
  state->polarity = PWM_POLARITY_INVERSED;
 else




  state->polarity = PWM_POLARITY_NORMAL;


 state->enabled = FIELD_GET(PWM_IMX_TPM_CnSC_ELS, val) ? 1 : 0;
}
