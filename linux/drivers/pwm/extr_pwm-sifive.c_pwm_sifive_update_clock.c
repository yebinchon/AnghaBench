
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long u64 ;
typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct pwm_sifive_ddata {unsigned long long approx_period; void* real_period; TYPE_1__ chip; scalar_t__ regs; } ;


 int FIELD_PREP (int ,int) ;
 unsigned long NSEC_PER_SEC ;
 int PWM_SIFIVE_CMPWIDTH ;
 scalar_t__ PWM_SIFIVE_PWMCFG ;
 int PWM_SIFIVE_PWMCFG_EN_ALWAYS ;
 int PWM_SIFIVE_PWMCFG_SCALE ;
 int clamp (scalar_t__,int ,int) ;
 int dev_dbg (int ,char*,void*) ;
 void* div64_ul (unsigned long long,unsigned long) ;
 scalar_t__ ilog2 (unsigned long) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void pwm_sifive_update_clock(struct pwm_sifive_ddata *ddata,
        unsigned long rate)
{
 unsigned long long num;
 unsigned long scale_pow;
 int scale;
 u32 val;







 scale_pow = div64_ul(ddata->approx_period * (u64)rate, NSEC_PER_SEC);
 scale = clamp(ilog2(scale_pow) - PWM_SIFIVE_CMPWIDTH, 0, 0xf);

 val = PWM_SIFIVE_PWMCFG_EN_ALWAYS |
       FIELD_PREP(PWM_SIFIVE_PWMCFG_SCALE, scale);
 writel(val, ddata->regs + PWM_SIFIVE_PWMCFG);


 num = (unsigned long long)NSEC_PER_SEC << (PWM_SIFIVE_CMPWIDTH + scale);
 ddata->real_period = div64_ul(num, rate);
 dev_dbg(ddata->chip.dev,
  "New real_period = %u ns\n", ddata->real_period);
}
