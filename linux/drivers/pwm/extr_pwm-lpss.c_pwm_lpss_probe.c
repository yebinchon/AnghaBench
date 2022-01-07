
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_2__ {int base; scalar_t__ npwm; int * ops; struct device* dev; } ;
struct pwm_lpss_chip {TYPE_1__ chip; struct pwm_lpss_boardinfo const* info; int regs; } ;
struct pwm_lpss_boardinfo {scalar_t__ npwm; unsigned long clk_rate; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 struct pwm_lpss_chip* ERR_CAST (int ) ;
 struct pwm_lpss_chip* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 scalar_t__ MAX_PWMS ;
 scalar_t__ WARN_ON (int) ;
 int dev_err (struct device*,char*,int) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct pwm_lpss_chip* devm_kzalloc (struct device*,int,int ) ;
 int pwm_lpss_ops ;
 int pwmchip_add (TYPE_1__*) ;

struct pwm_lpss_chip *pwm_lpss_probe(struct device *dev, struct resource *r,
         const struct pwm_lpss_boardinfo *info)
{
 struct pwm_lpss_chip *lpwm;
 unsigned long c;
 int ret;

 if (WARN_ON(info->npwm > MAX_PWMS))
  return ERR_PTR(-ENODEV);

 lpwm = devm_kzalloc(dev, sizeof(*lpwm), GFP_KERNEL);
 if (!lpwm)
  return ERR_PTR(-ENOMEM);

 lpwm->regs = devm_ioremap_resource(dev, r);
 if (IS_ERR(lpwm->regs))
  return ERR_CAST(lpwm->regs);

 lpwm->info = info;

 c = lpwm->info->clk_rate;
 if (!c)
  return ERR_PTR(-EINVAL);

 lpwm->chip.dev = dev;
 lpwm->chip.ops = &pwm_lpss_ops;
 lpwm->chip.base = -1;
 lpwm->chip.npwm = info->npwm;

 ret = pwmchip_add(&lpwm->chip);
 if (ret) {
  dev_err(dev, "failed to add PWM chip: %d\n", ret);
  return ERR_PTR(ret);
 }

 return lpwm;
}
