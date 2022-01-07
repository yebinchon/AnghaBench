
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_pwm_periodcfg {scalar_t__ clk_select; scalar_t__ clk_ps; scalar_t__ mod_period; } ;



__attribute__((used)) static bool fsl_pwm_periodcfg_are_equal(const struct fsl_pwm_periodcfg *a,
     const struct fsl_pwm_periodcfg *b)
{
 if (a->clk_select != b->clk_select)
  return 0;
 if (a->clk_ps != b->clk_ps)
  return 0;
 if (a->mod_period != b->mod_period)
  return 0;
 return 1;
}
