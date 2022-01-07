
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pwm_state {int period; scalar_t__ enabled; scalar_t__ polarity; scalar_t__ duty_cycle; } ;
struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct imx_tpm_pwm_param {scalar_t__ prescale; scalar_t__ mod; scalar_t__ val; } ;
struct imx_tpm_pwm_chip {int real_period; int user_count; int enable_count; scalar_t__ base; } ;


 int EBUSY ;
 int ETIME ;
 scalar_t__ FIELD_GET (scalar_t__,scalar_t__) ;
 scalar_t__ FIELD_PREP (scalar_t__,scalar_t__) ;
 int NSEC_PER_MSEC ;
 scalar_t__ PWM_IMX_TPM_CnSC (int ) ;
 scalar_t__ PWM_IMX_TPM_CnSC_ELS ;
 scalar_t__ PWM_IMX_TPM_CnSC_ELS_INVERSED ;
 scalar_t__ PWM_IMX_TPM_CnSC_ELS_NORMAL ;
 scalar_t__ PWM_IMX_TPM_CnSC_MSA ;
 scalar_t__ PWM_IMX_TPM_CnSC_MSB ;
 scalar_t__ PWM_IMX_TPM_CnV (int ) ;
 scalar_t__ PWM_IMX_TPM_MOD ;
 scalar_t__ PWM_IMX_TPM_SC ;
 scalar_t__ PWM_IMX_TPM_SC_CMOD ;
 scalar_t__ PWM_IMX_TPM_SC_CMOD_INC_EVERY_CLK ;
 scalar_t__ PWM_IMX_TPM_SC_PS ;
 scalar_t__ PWM_POLARITY_NORMAL ;
 int cpu_relax () ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int pwm_imx_tpm_get_state (struct pwm_chip*,struct pwm_device*,struct pwm_state*) ;
 scalar_t__ readl (scalar_t__) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 struct imx_tpm_pwm_chip* to_imx_tpm_pwm_chip (struct pwm_chip*) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static int pwm_imx_tpm_apply_hw(struct pwm_chip *chip,
    struct imx_tpm_pwm_param *p,
    struct pwm_state *state,
    struct pwm_device *pwm)
{
 struct imx_tpm_pwm_chip *tpm = to_imx_tpm_pwm_chip(chip);
 bool period_update = 0;
 bool duty_update = 0;
 u32 val, cmod, cur_prescale;
 unsigned long timeout;
 struct pwm_state c;

 if (state->period != tpm->real_period) {






  if (tpm->user_count > 1)
   return -EBUSY;

  val = readl(tpm->base + PWM_IMX_TPM_SC);
  cmod = FIELD_GET(PWM_IMX_TPM_SC_CMOD, val);
  cur_prescale = FIELD_GET(PWM_IMX_TPM_SC_PS, val);
  if (cmod && cur_prescale != p->prescale)
   return -EBUSY;


  val &= ~PWM_IMX_TPM_SC_PS;
  val |= FIELD_PREP(PWM_IMX_TPM_SC_PS, p->prescale);
  writel(val, tpm->base + PWM_IMX_TPM_SC);
  writel(p->mod, tpm->base + PWM_IMX_TPM_MOD);
  tpm->real_period = state->period;
  period_update = 1;
 }

 pwm_imx_tpm_get_state(chip, pwm, &c);


 if (c.enabled && c.polarity != state->polarity)
  return -EBUSY;

 if (state->duty_cycle != c.duty_cycle) {
  writel(p->val, tpm->base + PWM_IMX_TPM_CnV(pwm->hwpwm));
  duty_update = 1;
 }


 if (period_update || duty_update) {
  timeout = jiffies + msecs_to_jiffies(tpm->real_period /
           NSEC_PER_MSEC + 1);
  while (readl(tpm->base + PWM_IMX_TPM_MOD) != p->mod
         || readl(tpm->base + PWM_IMX_TPM_CnV(pwm->hwpwm))
         != p->val) {
   if (time_after(jiffies, timeout))
    return -ETIME;
   cpu_relax();
  }
 }







 val = readl(tpm->base + PWM_IMX_TPM_CnSC(pwm->hwpwm));
 val &= ~(PWM_IMX_TPM_CnSC_ELS | PWM_IMX_TPM_CnSC_MSA |
   PWM_IMX_TPM_CnSC_MSB);
 if (state->enabled) {







  val |= PWM_IMX_TPM_CnSC_MSB;
  val |= (state->polarity == PWM_POLARITY_NORMAL) ?
   PWM_IMX_TPM_CnSC_ELS_NORMAL :
   PWM_IMX_TPM_CnSC_ELS_INVERSED;
 }
 writel(val, tpm->base + PWM_IMX_TPM_CnSC(pwm->hwpwm));


 if (state->enabled != c.enabled) {
  val = readl(tpm->base + PWM_IMX_TPM_SC);
  if (state->enabled) {
   if (++tpm->enable_count == 1)
    val |= PWM_IMX_TPM_SC_CMOD_INC_EVERY_CLK;
  } else {
   if (--tpm->enable_count == 0)
    val &= ~PWM_IMX_TPM_SC_CMOD;
  }
  writel(val, tpm->base + PWM_IMX_TPM_SC);
 }

 return 0;
}
