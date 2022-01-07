
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pwm_device {int dummy; } ;
struct fsl_pwm_chip {int regmap; } ;


 int FTM_OUTMASK ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static bool fsl_pwm_is_any_pwm_enabled(struct fsl_pwm_chip *fpc,
           struct pwm_device *pwm)
{
 u32 val;

 regmap_read(fpc->regmap, FTM_OUTMASK, &val);
 if (~val & 0xFF)
  return 1;
 else
  return 0;
}
